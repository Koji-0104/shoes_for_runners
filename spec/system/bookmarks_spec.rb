require 'rails_helper'

RSpec.describe "Bookmark", type: :system do
  describe 'Bookmark機能' do
    let!(:user){ create(:user) }

    before do
      # 確認対象の画面に移動
      visit '/login'

      # labelの存在確認
      expect(page).to have_selector('label',text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'パスワード'), 'パスワード というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='email']"), 'Email というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='password']"), 'Password というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # ログイン用ボタンの存在確認
      expect(page).to have_button('ログイン'), 'ログイン用のボタンが表示されていることを確認してください'

      # ユーザーログイン処理
      fill_in 'メールアドレス', with: user.email
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
    end

    it '他人の投稿をbookmarkすることができる' do
      shoe = create(:shoe)

      # 確認対象の画面に移動
      visit "shoes/#{shoe.id}"

      # bookmark画像の存在確認
      expect(page).to have_link("js-bookmark-button-for-shoe-#{shoe.id}"), 'bookmark用の画像が表示されているかを確認してください'
      expect { click_on "js-bookmark-button-for-shoe-#{shoe.id}" }.to change { Bookmark.count }.by(0)

      visit 'shoes/bookmarks'

      # 処理結果の確認
      expect(page).to have_content(shoe.name), 'bookmarkしたシューズが表示されていません'
    end

    it 'bookmarkしたシューズをUnbookmarkすることができる' do
      shoe = create(:shoe)

      # 確認対象の画面に移動
      visit "shoes/#{shoe.id}"

      # bookmark画像の存在確認
      expect(page).to have_link("js-bookmark-button-for-shoe-#{shoe.id}"), 'bookmark用の画像が表示されているかを確認してください'
      expect { click_on "js-bookmark-button-for-shoe-#{shoe.id}" }.to change { Bookmark.count }.by(0)

      # Unbookmark画像の存在確認
      expect(page).to have_link("js-bookmark-button-for-shoe-#{shoe.id}"), 'bookmark用の画像が表示されているかを確認してください'
      expect { click_on "js-bookmark-button-for-shoe-#{shoe.id}" }.to change { Bookmark.count }.by(0)

      visit 'shoes/bookmarks'

      # 処理結果の確認
      expect(page).not_to have_content(shoe.name), 'Unbookmarkしたシューズが表示されています'
    end
  end
end

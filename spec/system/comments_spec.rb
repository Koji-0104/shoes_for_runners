require 'rails_helper'

RSpec.describe "Comment", type: :system do
  describe 'Comment機能' do
    let!(:user){ create(:user) }
    let(:shoe) { create(:shoe) }

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

    it 'シューズに対してコメントすることができる' do

      # 確認対象の画面に移動
      visit "shoes/#{shoe.id}"

      # labelの存在確認
      expect(page).to have_selector('label', text: 'コメント'), 'コメント というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='comment_body']"), 'コメント というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # 更新用ボタンの存在確認
      expect(page).to have_button('投稿'), 'コメント投稿用のボタンが表示されていることを確認してください'

      # ユーザー情報更新処理
      fill_in 'コメント', with: 'comment'
      click_button '投稿'

      expect(page).to have_content('コメント'), 'コメント作成直後の画面に、更新した情報が表示されていることを確認してください'

      # コメント一覧にコメント投稿したシューズが表示されていることの確認
      visit 'users/comments'
      expect(page).to have_content(shoe.name), 'コメントしたシューズが表示されていません'
    end


    it 'コメントを入力していない場合、無効' do
      # 確認対象の画面に移動
      visit "shoes/#{shoe.id}"

      # labelの存在確認
      expect(page).to have_selector('label', text: 'コメント'), 'コメント というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='comment_body']"), 'コメント というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # 更新用ボタンの存在確認
      expect(page).to have_button('投稿'), 'コメント投稿用のボタンが表示されていることを確認してください'


      # コメントを入力せずにせずに投稿ボタンを押す
      expect {
        fill_in 'コメント', with: nil
        click_button '投稿'
      }.to change { Shoe.count }.by(0)
    end

    it 'コメントを削除することができる' do
      # 確認対象の画面に移動
      visit "shoes/#{shoe.id}"

      # labelの存在確認
      expect(page).to have_selector('label', text: 'コメント'), 'コメント というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='comment_body']"), 'コメント というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # 更新用ボタンの存在確認
      expect(page).to have_button('投稿'), 'コメント投稿用のボタンが表示されていることを確認してください'
      # 確認対象の画面に移動
      visit "shoes/#{shoe.id}"

      # コメント作成
      fill_in 'コメント', with: 'テストコメント'
      click_button '投稿'

      # コメント削除
      expect(page).to have_link("ゴミ箱"), 'bookmark用の画像が表示されているかを確認してください'
      page.accept_confirm { click_on 'ゴミ箱' }

      sleep 1 # 削除処理の完了まで待機
      expect(page).not_to have_content('テストコメント'), 'シューズを削除した直後の画面に、削除した情報が表示されていないことを確認してください'
    end

    it 'コメントを更新することができる' do
      # 確認対象の画面に移動
      visit "shoes/#{shoe.id}"

      # labelの存在確認
      expect(page).to have_selector('label', text: 'コメント'), '名前 というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='comment_body']"), 'コメント というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # 更新用ボタンの存在確認
      expect(page).to have_button('投稿'), 'コメント投稿用のボタンが表示されていることを確認してください'
      # 確認対象の画面に移動
      visit "shoes/#{shoe.id}"

      # コメント作成
      fill_in 'コメント', with: 'テストコメント'
      click_button '投稿'

      # コメント更新
      expect(page).to have_button("鉛筆"), 'コメント編集用の画像が表示されているかを確認してください'
      click_on '鉛筆'

      # 編集コメント作成
      fill_in "comment-edit", with: 'テストコメント編集'
      click_button '更新'

      sleep 1 # 削除処理の完了まで待機
      expect(page).to have_content('テストコメント編集'), 'コメント編集した直後の画面に、編集した情報が表示されていることを確認してください'

      # コメント一覧にコメント投稿したシューズが表示されていることの確認
      visit 'users/comments'
      expect(page).to have_content(shoe.name), 'コメントしたシューズが表示されていません'
    end
  end
end

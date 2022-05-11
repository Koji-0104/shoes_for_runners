require 'rails_helper'

RSpec.describe "Mypages", type: :system do
  describe 'マイページ機能' do
    let!(:user){ create(:user) }
    let(:another_user){ create(:user) }

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

    it 'マイページを編集することができる' do

      # 確認対象の画面に移動
      visit '/mypage'

      # プロフィール編集ボタンの存在確認
      expect(page).to have_link('編集'), 'プロフィール編集ボタンが表示されているかを確認してください'

      click_on '編集'

      # labelの存在確認
      expect(page).to have_selector('label', text: '名前'), '名前 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='user_name']"), '名前 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='user_email']"), 'メールアドレス というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      fill_in '名前', with: 'name_edit'
      fill_in 'メールアドレス', with: 'edited@example.com'

      click_on '更新'

      # 処理結果の確認
      expect(page).to have_content('name_edit'), '編集した名前が表示されていません'
      expect(page).to have_content('edited@example.com'), '編集したメールアドレスが表示されていません'
    end

    it 'マイページを空欄で編集することができない' do

      # 確認対象の画面に移動
      visit '/mypage'

      # プロフィール編集ボタンの存在確認
      expect(page).to have_link('編集'), 'プロフィール編集ボタンが表示されているかを確認してください'

      click_on '編集'

      # labelの存在確認
      expect(page).to have_selector('label', text: '名前'), '名前 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='user_name']"), '名前 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='user_email']"), 'メールアドレス というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      fill_in 'メールアドレス', with: nil
      fill_in '名前', with: nil

      click_on '更新'

      # 処理結果の確認
      expect(page).to have_content("名前を入力してください"), '名前のバリデーションエラーメッセージが表示されていません'
      expect(page).to have_content("メールアドレスを入力してください"), 'メールアドレスのバリデーションエラーメッセージが表示されていません'
    end

    it 'ログインしていない場合、マイページリンクが表示されない' do
      # ユーザーログアウト処理

      # ログアウト用ボタンの存在確認
      expect(page).to have_link('ログアウト'), 'ログアウトのボタンが表示されていることを確認してください'

      click_on 'ログアウト'

      # 確認対象の画面に移動
      expect(page).not_to have_link('マイページ'), 'ログインしていない場合でも、ログアウトリンクが表示されています'
    end
  end
end

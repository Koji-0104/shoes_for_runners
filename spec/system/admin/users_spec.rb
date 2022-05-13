
require 'rails_helper'

RSpec.describe 'Admin::Users', type: :system do
  describe 'ユーザー編集・削除（管理側）' do
    before do
      # テストデータの用意
      admin_user = create(:user, :admin) # describe使わないので、let!を使わずに記載

      # 確認対象の画面に移動
      visit '/admin/login'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'メールアドレス'), 'Email というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'パスワード'), 'Password というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='email']"), 'Email というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='password']"), 'Password というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # ログイン用ボタンの存在確認
      expect(page).to have_button('ログイン'), 'ログイン用のボタンが表示されていることを確認してください'

      # ユーザーログイン処理
      fill_in 'メールアドレス', with: admin_user.email
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
    end

    it '他人のユーザー情報の編集ができる' do
      # テストデータの用意
      other_user = create(:user, :general)

      # 確認対象の画面に移動
      visit admin_user_path(other_user)

      # 編集用ボタンの存在確認
      expect(page).to have_link('編集'), '投稿編集用のボタンが表示されていることを確認してください'

      click_on '編集'

      # labelの存在確認
      expect(page).to have_selector('label', text: '名前'), '名前 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: '権限'), '権限 というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='user_name']"), '名前 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='user_email']"), 'メールアドレス というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='user_role']"), '権限 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # 更新用ボタンの存在確認
      expect(page).to have_button('更新'), '更新用のボタンが表示されていることを確認してください'

      # ユーザー情報更新処理
      fill_in '名前', with: 'name_edit'
      fill_in 'メールアドレス', with: 'user_edited@example.com'
      select :管理者, from: 'user[role]'

      click_button '更新'

      expect(current_path).to eq(admin_user_path(other_user)), '他人のユーザー情報の編集後に詳細画面に遷移していることを確認してください'
      expect(page).to have_content('name_edit'), '他人のユーザー情報を編集した直後の画面に、更新した情報が表示されていることを確認してください'
      expect(page).to have_content('user_edited@example.com'), '他人のユーザー情報を編集した直後の画面に、更新した情報が表示されていることを確認してください'
      expect(page).to have_content('管理者'), '他人のユーザー情報を編集した直後の画面に、更新した情報が表示されていることを確認してください'
      expect(page).not_to have_content('一般'), '他人のユーザー情報を編集した直後の画面に、更新した情報が表示されていることを確認してください'
    end

    it '他人のユーザー情報の削除ができる' do
      # テストデータの用意
      other_user = create(:user, :general)

      # 確認対象の画面に移動
      visit admin_user_path(other_user)

      # 削除用ボタンの存在確認
      expect(page).to have_link('削除'), 'ユーザー情報削除用のボタンが表示されていることを確認してください'
      page.accept_confirm { click_on '削除' }

      sleep 1 # 削除処理の完了まで待機
      expect(current_path).to eq('/admin/users'), 'ユーザー情報削除後に一覧画面に遷移していることを確認してください'
      expect(page).not_to have_content(other_user.name), '他人のユーザー情報を削除した直後の画面に、削除した情報が表示されていないことを確認してください'
      expect(page).not_to have_content(other_user.email), '他人のユーザー情報を削除した直後の画面に、削除した情報が表示されていないことを確認してください'
    end
  end
end

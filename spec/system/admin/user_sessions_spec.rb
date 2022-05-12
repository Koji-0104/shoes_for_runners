
require 'rails_helper'

RSpec.describe "Admin::UserSessions", type: :system do
  describe 'ユーザーログイン（管理側）' do
    it 'admin権限のあるユーザーでログインができる' do
      # テストデータの用意
      admin_user = create(:user, :admin)

      # 確認対象の画面に移動
      visit '/admin/login'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'パスワード'), 'パスワード というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='email']"), 'Email というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='password']"), 'Password というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # ログイン用ボタンの存在確認
      expect(page).to have_button('ログイン'), 'ログイン用のボタンが表示されていることを確認してください'

      # ユーザーログイン処理
      fill_in 'メールアドレス', with: admin_user.email
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'

      # 処理結果の確認
      expect(current_path).not_to eq('/admin/login'), 'ログイン処理が正しく行えるかを確認してください'
      expect(current_path).to eq('/admin'), 'ログイン後に管理画面に遷移できていません'
    end

    it 'admin権限のないユーザーでログインができない' do
      # テストデータの用意
      general_user = create(:user, :general)

      # 確認対象の画面に移動
      visit '/admin/login'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'パスワード'), 'パスワード というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='email']"), 'メールアドレス というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='password']"), 'パスワード というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # ログイン用ボタンの存在確認
      expect(page).to have_button('ログイン'), 'ログイン用のボタンが表示されていることを確認してください'

      # ユーザーログイン処理
      fill_in 'メールアドレス', with: general_user.email
      fill_in 'パスワード', with: nil
      click_button 'ログイン'

      # 処理結果の確認
      expect(current_path).not_to eq('/admin'), 'admin権限のないユーザーでログインできていないかを確認してください'
      expect(current_path).to eq('/admin/login'), 'ログインの失敗時に別の画面の遷移していないかを確認してください'
      # expect(current_path).not_to eq('/posts'), '入力項目が不足している場合にログインできていないかを確認してください'
      # expect(current_path).to eq('/admin'), 'ログインの失敗時に別の画面の遷移していないかを確認してください'
    end

    it '存在しないユーザーでログインができない' do
      # テストデータの用意
      admin_user = create(:user, :admin)

      # 確認対象の画面に移動
      visit '/admin/login'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'パスワード'), 'パスワード というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='email']"), 'メールアドレス というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='password']"), 'パスワード というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # ログイン用ボタンの存在確認
      expect(page).to have_button('ログイン'), 'ログイン用のボタンが表示されていることを確認してください'

      # ユーザーログイン処理
      fill_in 'メールアドレス', with: 'another_user@example.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'

      # 処理結果の確認
      expect(current_path).not_to eq('/admin'), '存在しないユーザーでログインできていないかを確認してください'
      expect(current_path).to eq('/admin/login'), 'ログインの失敗時に別の画面の遷移していないかを確認してください'
    end

    it 'パスワードが間違っている場合にログインができない' do
      # テストデータの用意
      admin_user = create(:user, :admin)

      # 確認対象の画面に移動
      visit '/admin/login'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'パスワード'), 'パスワード というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='email']"), 'メールアドレス というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='password']"), 'パスワード というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # ログイン用ボタンの存在確認
      expect(page).to have_button('ログイン'), 'ログイン用のボタンが表示されていることを確認してください'

      # ユーザーログイン処理
      fill_in 'メールアドレス', with: admin_user.email
      fill_in 'パスワード', with: 'wrong_password'
      click_button 'ログイン'

      # 処理結果の確認
      expect(current_path).not_to eq('/admin'), 'パスワードが間違っている場合にログインできていないかを確認してください'
      expect(current_path).to eq('/admin/login'), 'ログインの失敗時に別の画面の遷移していないかを確認してください'
    end
  end

  describe 'ユーザーログアウト' do
    it 'ユーザーのログアウトができる' do
      # テストデータの用意
      admin_user = create(:user, :admin)

      # 確認対象の画面に移動
      visit '/admin/login'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'メールアドレス'), 'メールアドレス というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'パスワード'), 'パスワード というラベルが表示されていることを確認してください'

      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='email']"), 'メールアドレス というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='password']"), 'パスワード というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # ログイン用ボタンの存在確認
      expect(page).to have_button('ログイン'), 'ログイン用のボタンが表示されていることを確認してください'

      # ユーザーログイン処理
      fill_in 'メールアドレス', with: admin_user.email
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'

      # ログアウト用ボタンの存在確認
      expect(page).to have_link('ログアウト'), 'ログアウトのボタンが表示されていることを確認してください'

      click_on 'ログアウト'

      # 処理結果の確認
      expect(page).to have_button('ログイン'), 'ログアウトができているかを確認してください'
    end

    it 'ログインしていない場合、ユーザーのログアウトリンクが表示されない' do
      # 確認対象の画面に移動
      visit '/admin/login'

      # 処理結果の確認
      expect(page).not_to have_link('ログアウト'), 'ログインしていない場合でも、ログアウトリンクが表示されています'
    end
  end
end

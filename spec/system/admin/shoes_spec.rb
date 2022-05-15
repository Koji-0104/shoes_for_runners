
require 'rails_helper'

RSpec.describe "Admin::Shoes", type: :system do
  describe 'シューズの作成・編集・削除（管理側）' do
    before do
      # テストデータの用意
      admin_user = create(:user, :admin) # describe使わないので、let!を使わずに記載

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
    end

  describe 'シューズ新規作成' do
    it 'シューズの新規作成ができる' do
      # 確認対象の画面に移動
      visit 'admin/shoes/new'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'シューズ名'), 'シューズ名 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'Url'), 'Url というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'Img url'), 'Img url というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メンズ or レディース シューズ選択'), 'メンズ or レディース シューズ選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'ジョギング用 or レース用シューズ選択'), 'ジョギング用 or レース用シューズ選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メーカー選択'), 'メーカー選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: '走力レベル選択'), '走力レベル選択 というラベルが表示されていることを確認してください'


      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='shoe_name']"), 'シューズ名 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_url']"), 'Url というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_img_url']"), 'Img url というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_gender']"), 'メンズ or レディース シューズ選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_purpose']"), 'ジョギング用 or レース用シューズ選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_maker']"), 'メーカー選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_level']"), '走力レベル選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # シューズ作成用ボタンの存在確認
      expect(page).to have_button('送信'), 'シューズ作成用のボタンが表示されていることを確認してください'

      # シューズ新規作成処理
      expect {
        fill_in 'シューズ名', with: 'shoe_new'
        fill_in 'Url', with: 'url_new'
        fill_in 'Img url', with: 'img-url_new'
        select :レディース, from: 'shoe[gender]'
        select :レース用, from: 'shoe[purpose]'
        select :アディダス, from: 'shoe[maker]'
        select :中級者, from: 'shoe[level]'
        click_button '送信'
      }.to change { Shoe.count }.by(1) # 処理結果の確認
    end

    it '同じシューズ名のシューズは新規作成できない' do
      # テストデータの用意
      user = create(:user) # describe使わないので、let!を使わずに記載

      # 確認対象の画面に移動
      visit 'admin/shoes/new'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'シューズ名'), 'シューズ名 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'Url'), 'Url というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'Img url'), 'Img url というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メンズ or レディース シューズ選択'), 'メンズ or レディース シューズ選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'ジョギング用 or レース用シューズ選択'), 'ジョギング用 or レース用シューズ選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メーカー選択'), 'メーカー選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: '走力レベル選択'), '走力レベル選択 というラベルが表示されていることを確認してください'


      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='shoe_name']"), 'シューズ名 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_url']"), 'Url というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_img_url']"), 'Img url というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_gender']"), 'メンズ or レディース シューズ選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_purpose']"), 'ジョギング用 or レース用シューズ選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_maker']"), 'メーカー選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_level']"), '走力レベル選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # シューズ作成用ボタンの存在確認
      expect(page).to have_button('送信'), 'シューズ作成用のボタンが表示されていることを確認してください'

      # シューズ新規作成処理
      fill_in 'シューズ名', with: 'shoe_new'
      fill_in 'Url', with: 'url_new'
      fill_in 'Img url', with: 'img-url_new'
      select :レディース, from: 'shoe[gender]'
      select :レース用, from: 'shoe[purpose]'
      select :アディダス, from: 'shoe[maker]'
      select :中級者, from: 'shoe[level]'
      click_button '送信'

      # 重複したシューズ名を持つシューズの作成処理
      expect {
        fill_in 'シューズ名', with: 'shoe_new'
        fill_in 'Url', with: 'url_new'
        fill_in 'Img url', with: 'img-url_new'
        select :レディース, from: 'shoe[gender]'
        select :レース用, from: 'shoe[purpose]'
        select :アディダス, from: 'shoe[maker]'
        select :中級者, from: 'shoe[level]'
        click_button '送信'
      }.to change { Shoe.count }.by(0) # 処理結果の確認
    end

    it '入力項目が不足している場合に新規作成ができない' do
      # 確認対象の画面に移動
      visit 'admin/shoes/new'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'シューズ名'), 'シューズ名 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'Url'), 'Url というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'Img url'), 'Img url というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メンズ or レディース シューズ選択'), 'メンズ or レディース シューズ選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'ジョギング用 or レース用シューズ選択'), 'ジョギング用 or レース用シューズ選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メーカー選択'), 'メーカー選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: '走力レベル選択'), '走力レベル選択 というラベルが表示されていることを確認してください'


      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='shoe_name']"), 'シューズ名 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_url']"), 'Url というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_img_url']"), 'Img url というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_gender']"), 'メンズ or レディース シューズ選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_purpose']"), 'ジョギング用 or レース用シューズ選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_maker']"), 'メーカー選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_level']"), '走力レベル選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'

      # シューズ作成用ボタンの存在確認
      expect(page).to have_button('送信'), 'シューズ作成用のボタンが表示されていることを確認してください'

      # シューズ新規作成処理
      expect {
        fill_in 'シューズ名', with: nil
        fill_in 'Url', with: nil
        fill_in 'Img url', with: nil
        select :レディース, from: nil
        select :レース用, from: nil
        select :アディダス, from: nil
        select :中級者, from: nil
        click_button '送信'
      }.to change { Shoe.count }.by(0) # 処理結果の確認
    end
  end

    it 'シューズの登録内容が編集できる' do
      # テストデータの用意
      shoe = create(:shoe)

      # 確認対象の画面に移動
      visit admin_shoe_path(shoe)

      # 編集用ボタンの存在確認
      expect(page).to have_link('編集'), '投稿編集用のボタンが表示されていることを確認してください'

      click_on '編集'

      # labelの存在確認
      expect(page).to have_selector('label', text: 'シューズ名'), 'シューズ名 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'Url'), 'Url というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'Img url'), 'Img url というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メンズ or レディース シューズ選択'), 'メンズ or レディース シューズ選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'ジョギング用 or レース用シューズ選択'), 'ジョギング用 or レース用シューズ選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: 'メーカー選択'), 'メーカー選択 というラベルが表示されていることを確認してください'
      expect(page).to have_selector('label', text: '走力レベル選択'), '走力レベル選択 というラベルが表示されていることを確認してください'


      # labelとフィールドの対応付け確認
      expect(page).to have_css("label[for='shoe_name']"), 'シューズ名 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_url']"), 'Url というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_img_url']"), 'Img url というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_gender']"), 'メンズ or レディース シューズ選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_purpose']"), 'ジョギング用 or レース用シューズ選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_maker']"), 'メーカー選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'
      expect(page).to have_css("label[for='shoe_level']"), '走力レベル選択 というラベルをクリックすると対応するフィールドにフォーカスすることを確認してください'


      # 更新用ボタンの存在確認
      expect(page).to have_button('送信'), '更新用のボタンが表示されていることを確認してください'

      # 投稿内容更新処理
      fill_in 'シューズ名', with: 'shoe_edited'
      select :レディース, from: 'shoe[gender]'
      select :レース用, from: 'shoe[purpose]'
      select :アディダス, from: 'shoe[maker]'
      select :中級者, from: 'shoe[level]'
      click_button '送信'

      expect(current_path).to eq(admin_shoe_path(shoe)), 'シューズの登録内容の編集後に詳細画面に遷移していることを確認してください'
      expect(page).to have_content('shoe_edited'), 'シューズ詳細の画面に、更新した情報が表示されていることを確認してください'
      expect(page).to have_content('レディース'), 'シューズ詳細の画面に、更新した情報が表示されていることを確認してください'
      expect(page).to have_content('レース用'), 'シューズ詳細の画面に、更新した情報が表示されていることを確認してください'
      expect(page).to have_content('アディダス'), 'シューズ詳細の画面に、更新した情報が表示されていることを確認してください'
      expect(page).to have_content('中級者(マラソン5時間以内)'), 'シューズ詳細の画面に、更新した情報が表示されていることを確認してください'
    end

    it 'シューズの削除ができる' do
      # テストデータの用意
      shoe = create(:shoe)

      # 確認対象の画面に移動
      visit admin_shoe_path(shoe)

      # 削除用ボタンの存在確認
      expect(page).to have_link('削除'), 'シューズ削除用のボタンが表示されていることを確認してください'
      page.accept_confirm { click_on '削除' }

      sleep 1 # 削除処理の完了まで待機
      expect(current_path).to eq('/admin/shoes'), 'シューズ削除後に一覧画面に遷移していることを確認してください'
      expect(page).not_to have_content(shoe.name), 'シューズを削除した直後の画面に、削除した情報が表示されていないことを確認してください'
      expect(page).not_to have_content(shoe.name), 'シューズを削除した直後の画面に、削除した情報が表示されていないことを確認してください'
    end
  end
end

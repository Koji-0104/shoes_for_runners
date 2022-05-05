require 'rails_helper'

RSpec.describe 'Shoe', type: :model do
  it "シューズ名、url、img_url、種類、使用目的、メーカー、走力レベル、パスワードがある場合、有効" do
    shoe = build(:shoe)
    expect(shoe).to be_valid
  end

  it "シューズ名がない場合、無効" do
    shoe = build(:shoe, name: nil)
    shoe.valid?
    expect(shoe.errors[:name]).to include("を入力してください")
  end

  it "シューズ名が重複している場合、無効" do
    first_shoe = create(:shoe, name: "test-shoes")
    second_shoe = build(:shoe, name: "test-shoes")
    second_shoe.valid?
    expect(second_shoe.errors[:name]).to include("はすでに存在します")
  end

  it "urlがない場合、無効" do
    shoe = build(:shoe, url: nil)
    shoe.valid?
    expect(shoe.errors[:url]).to include("を入力してください")
  end

  it "img_urlがない場合、無効" do
    shoe = build(:shoe, img_url: nil)
    shoe.valid?
    expect(shoe.errors[:img_url]).to include("を入力してください")
  end
end

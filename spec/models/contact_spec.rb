require "rails_helper"

RSpec.describe 'Contact', type: :model do

  it "メッセージがある場合、有効" do
    contact = build(:contact)
    expect(contact).to be_valid
  end

  it "メッセージがない場合、無効" do
    contact = build(:contact, message: nil)
    contact.valid?
    expect(contact.errors[:message]).to include("を入力してください")
  end

  it "メッセージが3001字以上、無効" do
    contact = build(:contact, message: "a" * 3001)
    contact.valid?
    expect(contact.errors[:message]).to include("は3000文字以内で入力してください")
  end
end

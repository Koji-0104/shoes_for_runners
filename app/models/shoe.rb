class Shoe < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :name, uniqueness: { case_sensitive: true }, presence: true
  validates :url, presence: true
  validates :img_url, presence: true

  enum gender: { 男性用シューズ: 0, 女性用シューズ: 1 }
  enum purpose: { ジョギング用: 0, レース用: 1 }
  enum maker: { ナイキ: 0, アディダス: 1, ミズノ: 2, アシックス: 3 }
  enum level: {初級者（マラソン5時間以上）: 0, 中級者（マラソン5時間以内）: 1, 上級者（マラソン4時間以内）:2 }
end

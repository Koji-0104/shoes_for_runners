class Shoe < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :name, uniqueness: { case_sensitive: true }, presence: true
  validates :url, presence: true
  validates :img_url, presence: true

  enum gender: { man: 0, woman: 1 }
  enum purpose: { jogging: 0, racing: 1 }
  enum maker: { nike: 0, adidas: 1, mizuno: 2, asics: 3 }
  enum level: {beginner: 0, intermediate: 1, advanced: 2 }
end

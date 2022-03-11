class Shoe < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :name, uniqueness: { case_sensitive: true }, presence: true
  validates :url, presence: true
  validates :img_url, presence: true
end

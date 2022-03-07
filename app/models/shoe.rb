class Shoe < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, uniqueness: { case_sensitive: true }, presence: true
  validates :url, presence: true
  validates :img_url, presence: true
end

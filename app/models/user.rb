class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :shoes, dependent: :destroy
  has_many :bookmark_shoes, through: :bookmarks, source: :shoe
  has_many :comment_shoes, through: :comments, source: :shoe

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, uniqueness: true, allow_nil: true
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, uniqueness: true, presence: true

  enum role: { general: 0, admin: 1 }

  def own?(object)
    id == object.user_id
  end

  def bookmark(shoe)
    bookmark_shoes << shoe
  end

  def unbookmark(shoe)
    bookmark_shoes.destroy(shoe)
  end

  def bookmark?(shoe)
    bookmark_shoes.include?(shoe)
  end
end

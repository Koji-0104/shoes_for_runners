class Contact < ApplicationRecord
  validates :message, presence: true, length: { maximum: 3000 }
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  RESTAURANT_TYPES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: RESTAURANT_TYPES }
end

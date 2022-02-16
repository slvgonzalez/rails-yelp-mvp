class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end

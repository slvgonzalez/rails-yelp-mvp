class Review < ApplicationRecord
  belongs_to :restaurant_id

  validates :content, :rating, presence: true
  validates :rating, numericality: { in: 1..5 }
end

class Poop < ApplicationRecord
  belongs_to :user

  MAX_RATING = 5

  validates :stars, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: MAX_RATING}
end

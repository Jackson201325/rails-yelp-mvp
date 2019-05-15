class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than: -1, less_than: 6}
end
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = ['chinese', 'belgian', 'french', 'japanese', 'italian']
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w(chinese japanese french belgian italian)
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end

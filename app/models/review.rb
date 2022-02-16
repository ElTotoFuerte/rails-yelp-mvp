class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, allow_blank: false
  validates_numericality_of :rating, only_integer: true
  validates :rating, inclusion: { in: 0..5 }
end

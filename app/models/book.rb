class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :title, presence: true
  validates :option, presence: true
end
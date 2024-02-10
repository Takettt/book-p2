class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :favorites, dependent: :destroy
  validates :title, presence: true
  validates :option, presence: true

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end

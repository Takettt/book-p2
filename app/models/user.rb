class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_one_attached :profile_image
         has_many :books
         has_many :favorites, dependent: :destroy
         has_many :book_comment
  
end
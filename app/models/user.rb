class User < ApplicationRecord
  validates :name, length: { maximum: 20 }
  validates :name, length: { minimum: 2 }
  validates :introduction, length: { maximum: 50 }
  validates :name, presence: true

  attachment :profile_image
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :book, dependent: :destroy       
         
end

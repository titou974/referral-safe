class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :role, dependent: :destroy
  has_many :experiences, dependent: :destroy
  has_many :companies, through: :experiences
  has_one_attached :photo
  has_one :company, through: :role
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :status, presence: true
  validates :address, presence: true
  
end

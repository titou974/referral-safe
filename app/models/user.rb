class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :position, dependent: :destroy
  has_many :experiences, dependent: :destroy
  has_many :companies, through: :experiences
  has_one :company, through: :position
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :status, presence: true
  validates :address, presence: true
end

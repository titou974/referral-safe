class Company < ApplicationRecord
  has_many :users, through: :
  has_many :users, through: :experiences
  has_many :, dependent: :destroy

  validates :name, presence: true
  validates :sector, presence: true
  validates :size, presence: true
  validates :siret, presence: true
end

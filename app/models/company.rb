class Company < ApplicationRecord
  has_many :users, through: :roles
  has_many :users, through: :experiences
  has_many :roles, dependent: :destroy

  validates :name, presence: true
  validates :sector, presence: true
  validates :size, presence: true
  validates :siret, presence: true
end

class Company < ApplicationRecord
  has_many :users, through: :positions
  has_many :users, through: :experiences
  has_many :positions, dependent: :destroy

  validates :name, presence: true
  validates :sector, presence: true
  validates :size, presence: true
  validates :siret, presence: true
end

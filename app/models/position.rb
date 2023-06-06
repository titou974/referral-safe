class Position < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :name, presence: true
  validates :admin, presence: true
end

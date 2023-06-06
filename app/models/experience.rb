class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :job_name, presence: true
  validates :job_description, presence: true
  validates :skills, presence: true
end

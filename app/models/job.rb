class Job < ApplicationRecord
  validates :job, presence: true
  validates :state, presence: true
end

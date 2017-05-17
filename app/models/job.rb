class Job < ApplicationRecord
	
	has_many :boat_jobs
	has_many :boats, through: :boat_jobs

# The code below indicates that the job must have the following paramters or else it would not add the job
	validates :description, length: {minimum: 50}, presence: true
	validates :description, uniqueness: true
	validates :cost, numericality: { greater_than_or_equal_to: 1000 }, presence: true
end

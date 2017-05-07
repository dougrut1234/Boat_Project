class Job < ApplicationRecord
	
	has_many :boat_jobs
	has_many :boats, through: :boat_jobs

	validates :description, length: {minimum: 50}, presence: true
	validates :description, uniqueness: true
	validates :cost, numericality: { greater_than_or_equal_to: 1000 }, presence: true
end

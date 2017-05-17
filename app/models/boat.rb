class Boat < ApplicationRecord

	has_many :boat_jobs
	has_many :jobs, through: :boat_jobs

# Line 7 indicates that the boat MUST have a unique name.
	validates :name, uniqueness: true

	has_attached_file :avatar, :styles => { :medium => "600x600>", :thumb => "100x100>" }, 
	:default_url => "fallout.jpg" 
	validates_attachment_content_type :avatar, 
	:content_type => /\Aimage\/.*\Z/
end

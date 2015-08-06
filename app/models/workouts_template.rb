class WorkoutsTemplate < ActiveRecord::Base
	has_many :workouts
	has_many :sessionlists
	belongs_to :user
	has_many :templates
	
end

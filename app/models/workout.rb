class Workout < ActiveRecord::Base
	belongs_to :user
	has_many :exercises
	belongs_to :workouts_template

	
	
end

class Exercise < ActiveRecord::Base
	belongs_to :workout
	belongs_to :template

	
end

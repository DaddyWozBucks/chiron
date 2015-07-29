class TemplatesController < ApplicationController
	def new
		@exlist = Template.exlist
	end

	def create
		@worktemp = WorkoutsTemplate.find_by(params[:workouts_template_id])
		@selectedexercises = []
		@selectedexercises.each do |ex|
			@worktemp.exercise_templates.create! 
			
		end
	end
end

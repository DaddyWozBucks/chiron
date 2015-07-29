class SessionlistsController < ApplicationController
	def new
		@worktemp = WorkoutsTemplate.find(params[:workouts_template_id])
		@sessionlist = Sessionlist.new
		@exlist = Template.exlist
		
	end

	def create
		
		@worktemp = WorkoutsTemplate.find(params[:workouts_template_id])
		@sessionplan = params[:exercise_ids]
		@sessionplan.each do |sesh|
			@worktemp.sessionlists.create!(exercise_id: sesh)
			
		end
		redirect_to workouts_template_path(@worktemp)
	end


end

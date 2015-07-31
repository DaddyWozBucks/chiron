class WorkoutsTemplatesController < ApplicationController
	before_action :authenticate_user!
	def show
		@exerID = []
		@worktemp = WorkoutsTemplate.find(params[:id])
		@worktemp.sessionlists.each do |ses|
						@exerID << ses.exercise_id
					end	
		@templates = Template.where(id: @exerID)
		
	end

	def index
		@worktemp = WorkoutsTemplate.all
		exercisedIdGrabber
		@templates = Template.where(id: @exerID)
	end

	def new
		@user = current_user
		@worktemp = @user.workouts_templates.new
		
	end

	def create
		@user = current_user
		@worktemp = @user.workouts_templates.create!(workouts_template_params)
		redirect_to new_workouts_template_sessionlist_path(@worktemp)
	end

	def edit
		@worktemp = WorkoutsTemplate.find(params[:id])
		@worktemp.sessionlists.destroy_all
		redirect_to new_workouts_template_sessionlist_path(@worktemp)
	end

	

	def destroy
		@worktemp = WorkoutsTemplate.find(params[:id])
		@worktemp.destroy
		redirect_to user_index_path
	end

	def userindex
		@worktemp = WorkoutsTemplate.where(user_id: current_user.id)
		
		exercisedIdGrabber
		@templates = Template.where(id: @exerID)
	end

	def exercisedIdGrabber	
		@exerID = []
			@worktemp.each do |w|	
				if w.sessionlists.any?
					w.sessionlists.each do |ses|
						@exerID << ses.exercise_id
					end	
				end
			end
	end

	private

	def workouts_template_params
		params.require(:workouts_template).permit(:name)
	end
end

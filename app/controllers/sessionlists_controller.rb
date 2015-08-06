class SessionlistsController < ApplicationController
	before_action :authenticate_user!
	def new
		@worktemp = WorkoutsTemplate.find(params[:workouts_template_id])
		@sessionlist = Sessionlist.new
		@exlist = Template.exlist
		
	end

	def edit
		@worktemp = WorkoutsTemplate.find(params[:workouts_template_id])
		@sessionlist = Sessionlist.new
		@exlist = Template.exlist
	end

	def create
		# respond_to :html, :JSON 
		if request.format == :HTML 	
			@worktemp = WorkoutsTemplate.find(params[:workouts_template_id])
			@sessionplan = params[:exercise_ids]
			@sessionplan.each do |sesh|
				@worktemp.sessionlists.create!(exercise_id: sesh)
			end
			redirect_to workouts_template_path(@worktemp)
		else request.format == :JSON
			@worktemp = WorkoutsTemplate.find(params[:workouts_template_id])
			@worktemp.sessionlists.create!(exercise_id: params[:exercise_ids])
			redirect_to workouts_templates_path
		end
	
	end

	def index

		@worktemp = WorkoutsTemplate.find(params[:workouts_template_id])
			 @templates = []
			 @worktemp.sessionlists.each do |s|
			 	t = Template.find(s.exercise_id)
			 	@templates.push([t.name, t.id])	
			 end
		respond_to do |format|
			format.json {
				render json: {:templates => @templates}
			}
		end
	end
			


end

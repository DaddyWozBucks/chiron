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
			@worktemp = WorkoutsTemplate.find(params[:value])
			@worktemp.sessionlists.create!(exercise_id: params[:ex_id])
			render json: { status: :created }
		end
	
	end


end

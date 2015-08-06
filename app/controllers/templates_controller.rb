class TemplatesController < ApplicationController
	before_action :authenticate_user!
	def new
		@exlist = Template.exlist
		@template = Template.new
	end

	def index
		@template = Template.all 
		@worktemps = WorkoutsTemplate.all
		# array_gen
	end

	def show
		@template = Template.find(params[:id])
		@workouts = Workout.where(user_id: current_user.id)
		@exercises = []
		@workouts.each do |w|
			@exercises += w.exercises.where(template_id: params[:id])
		end
		@exercises


	end
	def create
		@template = Template.create!(template_params)
		redirect_to templates_path
	end

	def exergrabber
		@exercises = []
		@workouts.each do |w|
			@exercises += w.exercises.where(template_id: params[:id])
		end
		@exercises
	end
	# def array_gen
	# 	@worktemparray = []
	# 	@worktemps.each do |wt|
 #  			@worktemparray += [wt.name, wt.id
 #  			end 
 #  			@worktemparray
 #  	end

private

	def template_params
		params.require(:template).permit(:name, :templateshot, :instructions, :weight, :reps, :sets, :distance, :time, :calories)
	end
end

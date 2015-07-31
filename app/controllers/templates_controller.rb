class TemplatesController < ApplicationController
	before_action :authenticate_user!
	def new
		@exlist = Template.exlist
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
		@worktemp = WorkoutsTemplate.find_by(params[:workouts_template_id])
		@selectedexercises = []
		@selectedexercises.each do |ex|
			@worktemp.exercise_templates.create! 
			
		end
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
 #  			@worktemparray += [wt.name, wt.id]
 #  			end 
 #  			@worktemparray
 #  	end
end

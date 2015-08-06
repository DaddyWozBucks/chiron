class WorkoutsController < ApplicationController
	before_action :authenticate_user!
	def index
		@workouts = Workout.all
	end

	def new
		@workout = @worktemp.workouts.create!(workouts_template_id: params[:workouts_template_id], imgurl: @worktemp.imgurl)
		redirect_to new_workout_exercise_path(@workout)
	end

	def create	
		@worktemp = WorkoutsTemplate.find(params[:workouts_template_id])
		@user = current_user
		@workout = @worktemp.workouts.create!(user_id: current_user.id, title: @worktemp.name)
		redirect_to new_workout_exercise_path(@workout)
	end

	def show
		@workout = Workout.find(params[:id])
		@worktemp = WorkoutsTemplate.find(@workout.workouts_template_id)
		@exercises = @workout.exercises
		
	end


	
	def destroy
		@workout = Workout.find(params[:id])
		@workout.destroy
		redirect_to workouts_path
	end


	# private

	# def workout_params
	# 	params.require(:workout).permit(:workoutref)
end

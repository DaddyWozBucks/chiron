class ExercisesController < ApplicationController
	def new
		@workout = Workout.find(params[:workout_id])
		@worktemp = WorkoutsTemplate.find(@workout.workouts_template_id)
		exercisedIdGrabber
		@exerID.each do |ex|
			@workout.exercises.create!(template_id: ex)
		end
		
		redirect_to ex_step_path
		# @exercise = Exercise.new
		# @workout = Workout.find(params[:workout_id])
		# @worktemp = WorkoutsTemplate.find(@workout.workouts_template_id)
		# redirect_to "/workouts/#{@workout.id}/exercises"
	end

	def create
	
	end

	def index
		@workout = Workout.find(params[:workout_id])
		@exercises = @workout.exercises.all
	end

	def step
		@workout = Workout.find(params[:workout_id])
		@exercise = @workout.exercises.where(completed: false).limit(1).first
		@template = Template.find(@exercise.template_id)
		
	end

	def checkend

		if @workout.exercises.where(completed: false).limit(1).first == nil
			flash[:notice] = "Congratulations on a Workout Completed you sweaty beast!"
			redirect_to workout_path(@workout)
		else
			
			redirect_to ex_step_path
		end
	end

	def exercisedIdGrabber
		@exerID = []
		@worktemp.sessionlists.each do |ses|	
			@exerID << ses.exercise_id
		end
		
		@exerID
	end

	def update	
		@workout = Workout.find(params[:workout_id])
		@exercise = Exercise.find(params[:id])
		@exercise.update(exercise_params)
		checkend
	end

	
	private
	def exercise_params
		params.require(:exercise).permit(:name,:weight, :reps, :sets, :distance, :time, :calories, :template_id, :completed)
	end

end

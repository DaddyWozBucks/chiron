class UsersController < ApplicationController
	 before_action :authenticate_user!
	 before_action :user_signed_in?

	def show
		@user = current_user
		@workouts = Workout.where(user_id: current_user.id)
		
	end

	def user_rankings
		@users = User.order(:workout)
		fail
	end
end

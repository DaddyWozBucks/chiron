class HomeController < ApplicationController
	

	def home
		if current_user != nil
			redirect_to user_path(current_user)
		end
	end
	def user_rankings
		@users = User.order(:workouts)
		fail
	end

end

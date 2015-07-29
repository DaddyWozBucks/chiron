class HomeController < ApplicationController

	def home
	@user = User.all
	end

end

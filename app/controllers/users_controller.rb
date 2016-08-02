
class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@degree = Degree.new
		@degree.school = School.new
	end

	def new
		@user = current_user
	end

end

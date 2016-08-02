
class DegreesController < ApplicationController

	before_action :authenticate

	def index
		@user = current_user
		@degree = Degree.new
		@degree.school = School.new
	end

	def new

		@user = current_user
		@degree = Degree.new
		@degree.school = School.new

	end

	def create
		@user = User.find(params[:user_id])
		if Degree.create(degree_params).valid?
			@degree = Degree.create(degree_params)
			@user.degrees << @degree
			@user.save
			redirect_to user_path(@user)
		else
			flash[:error] = "You must enter a school name"
			@degree = Degree.new
			@degree.school = School.new
			render :new
		end
	end

	private

	def degree_params
		params.require(:degree).permit(:name, :gpa, school_attributes: [:name, :city])
	end

	def authenticate
		if !logged_in?
			flash[:alert] = "You must be logged in to see this page."
			redirect_to root_path
		end
	end
end


class DegreesController < ApplicationController

	before_action :authenticate

	def index
		@user = User.find(params[:user_id])
		@degrees = @user.degrees if @user.degrees
		@degree = Degree.new
		@degree.school = School.new
		respond_to do |format|
			format.html {render :index}
			format.json {render json: @degrees}
		end
	end

	def new

		@user = User.find(params[:user_id])
		if @user != current_user
			redirect_to(user_path(current_user))
		end
		@degree = Degree.new
		@degree.school = School.new

	end

	def create
		@user = User.find(params[:user_id])
		if Degree.create(degree_params).valid?
			@degree = Degree.create(degree_params)
			@user.degrees << @degree

			@user.save
			render json: @degree
		else
			flash[:error] = "You must enter a school name"
			@degree = Degree.new
			@degree.school = School.new
			render :new
		end
	end

	private

	def degree_params
		params.require(:degree).permit(:name, :gpa, :year_completed, school_attributes: [:name, :city])
	end

	def authenticate
		if !logged_in?
			flash[:alert] = "You must be logged in to see this page."
			redirect_to root_path
		end
	end
end


class DegreesController < ApplicationController
	
	
	def index
		
	end
	
	def new
		
		@user = current_user
		@degree = Degree.new
		@degree.school = School.new
		binding.pry
		
	end
	
	def create
		@user = current_user
	end
	
	private
	
	def degree_params
		params.require(:degree).permit(:name, :gpa, schools_attributes: [:name, :city])
	end
	
	
end
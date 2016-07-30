
class UsersController < ApplicationController
	
	def new
		@user = User.first
	end
	
end
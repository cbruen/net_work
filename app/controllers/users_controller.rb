
class UsersController < ApplicationController

  def index
    !params[:min_gpa] ? @users = User.all : @users = User.minimum_gpa(params[:min_gpa].to_f)
  end

	def show
		@user = User.find(params[:id])
		@degree = Degree.new
		@degree.school = School.new
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @user}
    end 
	end

	def new
		@user = User.new
	end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

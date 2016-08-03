
class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
      if auth.nil?
        @user = User.find_by(email: params[:user][:email])
          if @user.nil?
            flash[:error] = "Email required"
            render :new
          end
      else
        @user = User.find_or_create_by(uid: auth[:uid]) do |f|
          f.name = auth[:info][:name]
          f.email = auth[:info][:email]
        end
      end
      session[:user_id] = @user.id
      redirect_to user_path(@user)
  end

  def destroy
      reset_session
      redirect_to root_path
  end

  def auth
      request.env['omniauth.auth']
  end

end

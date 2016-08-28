
class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create

      if auth.nil?
        @user = User.find_by(email: params[:user][:email])
          if @user.nil?
            @user = User.new
            flash[:error] = "User not found"
            render "sessions/new"
            return
          elsif !@user.authenticate(params[:user][:password]) || params[:password] != params[:password_confirmation]
            @user = User.new
            flash[:error] = "Invalid password"
            render "sessions/new"
            return
          end
      else
        @user = User.find_or_create_by(uid: auth[:uid]) do |f|
          f.name = auth[:info][:name]
          f.email = auth[:info][:email]
        end
        @user.save(:validate=>false)
      end
      flash[:error].clear if flash[:error]
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


class SessionsController < ApplicationController

  def create
      binding.pry
      @user = User.find_or_create_by(uid: auth[:uid]) do |f|
        f.name = auth[:info][:name]
        f.email = auth[:info][:email]
      end
      session[:user_id] = @user.id
      redirect_to degrees_path
  end

  def delete
      session.destroy :user_id
      redirect_to root_path
  end

  def auth
      request.env['omniauth.auth']
  end

end

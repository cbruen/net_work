
class SessionsController < ApplicationController

  def create
      @user = User.find_or_create_by(uid: auth[:uid]) do |f|
        f.name = auth[:info][:name]
        f.email = auth[:info][:email]
      end
      session[:user_id] = @user.id
  end

  def auth
      request.env['omniauth.auth']
  end

end

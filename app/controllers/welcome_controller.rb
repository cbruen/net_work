
class WelcomeController < ApplicationController

  def home

    redirect_to new_user_path
    #redirect_to user_path(current_user)
  end

end

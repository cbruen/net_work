
class WelcomeController < ApplicationController

  def home
    binding.pry
    redirect_to user_path(current_user)
  end

end

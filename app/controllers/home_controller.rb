class HomeController < ApplicationController
  def index
  	if current_user
  		redirect_to users_path
  	end
  end
end



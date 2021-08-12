class RestartController < ApplicationController
  def restart
    session[:counter] = 0
    redirect_to "/times"
  end
end

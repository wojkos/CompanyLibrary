class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path, notice: "Zostałeś zalogowany"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Zostałeś wylogowany"
  end
end

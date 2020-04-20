class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to "/"
    end
  end

  def create
    user = User.find_or_create_by(email: params["email"])
    session[:current_user_id] = user.id
    redirect_to "/"
  end
end

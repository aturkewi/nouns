module ApplicationHelper
  def current_user
    @current_user ||
    if session[:current_user_id]
      User.find_by(id: session[:current_user_id])
    else
      nil
    end
  end
end

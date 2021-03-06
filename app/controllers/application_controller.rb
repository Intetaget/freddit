class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    session[:user_id] && User.find(session[:user_id])
  end

  def authenticate_user!
    unless current_user
      flash[:notice] = "You must be logged in to do that."
      redirect_to login_path
    end
  end
end

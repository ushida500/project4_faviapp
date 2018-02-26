class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # make current_user() available in our views, like link_to() and image_tag()
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user()
  end 

  def authorize
    redirect_to new_session_path unless logged_in?
  end
end

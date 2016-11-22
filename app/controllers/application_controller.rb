class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   helper_method :current_user, :logged_in?, :same_current_user

  def current_user
    @current_user ||= Doctor.find(session[:doctor_id]) if session[:doctor_id]
    @same_current_user = @current_user
  end

  def same_current_user
    @same_current_user 
  end

  def logged_in?
     !!current_user
  end 

  def require_user
   if !logged_in?
   	flash[:danger] = "You must be Log in"
   	redirect_to back
  end
 end
end

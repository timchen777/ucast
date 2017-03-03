class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

#For Facebook login fbuser  
  helper_method :current_fbuser
  
  def current_fbuser
    # @current_fbuser ||= Fbuser.find(fbsession[:fbuser_id]) if fbsession[:fbuser_id]
    @current_fbuser ||= Fbuser.find(session[:fbuser_id]) if session[:fbuser_id]
  end
  
#For not Facebook login user    
  helper_method :current_user, :logged_in?
  
  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
end

class FbsessionsController < ApplicationController
  def create
    fbuser = Fbuser.from_omniauth(env["omniauth.auth"])
    # fbsession[:fbuser_id] = fbuser.id
    session[:fbuser_id] = fbuser.id
    redirect_to root_path    
  end

  def destroy
    # fbsession[:fbuser_id] = nil
    session[:fbuser_id] = nil
    redirect_to root_path    
  end
end

class SessionsController < ApplicationController
  def new
    #登入頁面使用
  end

  def create
    #尋找使用者
    user = User.find_by(name: params[:name])   
    #驗證使用者，若成功，就建立一個 session，把 user_id 放入 session hash
    if user && user.authenticate(params[:password])
      # Rails.logger.debug("login")
      Status.find_by_user_id(user.id).online = true
      session[:user_id] = user.id
      # binding.pry    
      redirect_to root_path
    else
      Status.find_by_user_id(user.id).online = false
      redirect_to login_path
    end
    # binding.pry    
  end

  def destroy
    #登出畫面使用，刪除 session hash 裡面的 user_id
    # Rails.logger.debug("logout")
    # Status.find_by_user_id(user.id).online = false
    session[:user_id] = nil
    redirect_to root_path
  end
end
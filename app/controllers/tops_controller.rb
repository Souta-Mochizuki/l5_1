class TopsController < ApplicationController
  def main
    render 'login'
  end
    
  def login
    if User.find_by(uid: params[:uid])
      user = User.find_by(uid: params[:uid])
      userpass = user.pass
      if BCrypt::Password.new(userpass) == params[:pass]
          session[:login_uid] = params[:uid]
          redirect_to root_path
      else
          render 'error'
      end
    else
      redirect_to users_path
    end
  end
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end

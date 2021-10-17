class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    require 'bcrypt'
    @pass = params[:user][:pass]
    @userpass = BCrypt::Password.create(@pass)
    @user = User.new(uid: params[:user][:uid],pass: @userpass)
    if @user.save
      flash[:notice] = "1レコード追加しました"
      redirect_to users_path
    else
      render 'new'
    end
  end
  
  def destroy
    user = User.find(params[:id])
    if user.destroy
      flash[:notice] = "1レコード削除されました"
      redirect_to users_path
    end
  end
  
end

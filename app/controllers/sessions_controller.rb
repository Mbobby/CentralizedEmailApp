class SessionsController < ApplicationController
  protect_from_forgery
  def new
  end
  
  def create
    @user = User.find_by_username(params[:session][:username].downcase!)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:notice] = "Invalid Username/Password Combination"
      redirect_to '/login'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end

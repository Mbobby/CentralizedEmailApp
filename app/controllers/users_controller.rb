class UsersController < ApplicationController
  protect_from_forgery
  def new
    @user = User.new
  end

	def create 
	  @user = User.new(user_params) 
	  if @user.save 
	    session[:user_id] = @user.id 
	    redirect_to '/' 
	  else
	  	flash[:notice] = "Your signup failed, please try again with a different username and email."
	    redirect_to '/signup' 
	  end 
	end  

	def edit
	end

	private
	  def user_params
	    params.require(:user).permit(:first_name, :last_name,:username, :email, :password)
	  end  
end

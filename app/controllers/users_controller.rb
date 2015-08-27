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
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:notice] = "User account has been successfully edited."
			redirect_to '/inbox'
		else
			flash[:notice] = "User account was not updated, please check for incorrect input"
			redirect_to edit_user_path(current_user)
		end
	end

	private
	  def user_params
	    params.require(:user).permit(:first_name, :last_name,:username, :email, :password)
	  end  
end

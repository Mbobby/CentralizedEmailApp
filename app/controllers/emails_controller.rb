class EmailsController < ApplicationController
	before_action :require_user

	def new
		@email = Email.new
	end

	def index
		@emails = current_user.emails.order(created_at: :desc)
	end

	def show
		@email = Email.find(params[:id])
	end
	
	def create
		@email = Email.new(email_params)
		@user = User.find_by_username(params['username'])
		if(@user)
			@email.users << @user
		else
			flash[:notice] = "User with username : #{params['username']} does not exist"
			redirect_to '/send'
			return
		end

		if(@email.save)
			flash[:notice] = "Email Sent successfully to #{params['username']}"
			redirect_to '/inbox'
			return
		else
			flash[:notice] = "Email could not be sent to #{params['username']}, Please try again"
			redirect_to '/send'
			return
		end	
	end

	# def destroy
	# end


	def sent
		@emails = Email.where(authorId: current_user.id).order(created_at: :desc)
	end
	
	private
	def email_params
		params.require(:email).permit(:authorId, :title,:body)
	end
end

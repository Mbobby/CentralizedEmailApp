class EmailsController < ApplicationController
	before_action :require_user

	def new
		@email = Email.new
	end

	def index
		@emails = current_user.emails
	end

	def show
	end
	# def create
	# end

	# def destroy
	# end

	def email_params
		params.require(:email).permit(:authorId, :title,:body, :username)
	end
end

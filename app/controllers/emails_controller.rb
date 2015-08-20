class EmailsController < ApplicationController
	before_action :require_user

	def new
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
end

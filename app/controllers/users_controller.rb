class UsersController < ApplicationController
#	before action :authenticate_user!
	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
		@items = @user.items
	end
end
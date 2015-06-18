class PinsController < ApplicationController
	def create
		@pin = Pin.new(:user_id => params[:user_id], :item_id => params[:item_id])
		@pin.save
		redirect_to '/items'
	end
end
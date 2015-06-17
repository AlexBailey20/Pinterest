class PinsController < ApplicationController
	def create
		@pin = Pin.new
		@pin.user_id = current_user.id
		@pin.item_id = Item.find(params[:id]).id
	end
end
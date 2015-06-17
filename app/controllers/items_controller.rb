class ItemsController < ApplicationController
	def index
		@items = Item.all
	end
	def show
		@item = Item.find(params[:id])
	end
	def new
		@item = Item.new
	end

	def create
		@item = Item.new(params["item"].permit(:name , :description, :price, :avatar))
		if @item.save
			redirect_to '/items'
		else
			render :new
		end
	end
end
class StocksController < ApplicationController

	def index
		@stocks = Stock.all
	end

	def show
		found_stock
	end

	def edit
		@vendors = Vendor.all
		@sweets = Sweet.all 
		found_stock
	end

	def new
		@vendors = Vendor.all
		@sweets = Sweet.all 
		@stock = Stock.new
	end

	def create
		@vendors = Vendor.all
		@sweets = Sweet.all 
		@stock = Stock.create(stock_params)
		if @stock.valid?
			redirect_to @stock 
		else
			render :new
		end
	end

	def update
		@vendors = Vendor.all
		@sweets = Sweet.all 
		if found_stock.update(stock_params)
			redirect_to found_stock
		else 
			render :edit
		end
	end

	def destroy
		Stock.destroy_all(params[:id])
	end

	private
	def stock_params
		params.require(:stock).permit(:sweet_id,:vendor_id,:price)
	end

	def found_stock
		@stock = Stock.find(params[:id])
	end

end

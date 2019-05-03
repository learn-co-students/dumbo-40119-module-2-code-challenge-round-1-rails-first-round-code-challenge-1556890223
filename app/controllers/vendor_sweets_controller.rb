class VendorSweetsController < ApplicationController

	def index
		@vendorsweets = VendorSweet.all
	end

	def new
		@vendorsweet = VendorSweet.new
		@vendors = Vendor.all
		@sweets = Sweet.all
		# byebug
	end

	def show
		@vendorsweet = VendorSweet.find(params[:id])
	end

	def create
		@vendorsweet = VendorSweet.create(vs_params)
		@vendors = Vendor.all
		@sweets = Sweet.all
		# byebug
		if @vendorsweet.save
			# redirect_to @vendorsweet
			@vendor = @vendorsweet.vendor
			redirect_to @vendor
		else
			render :new
		end
	end

	# def destroy
		# VendorSweet.destroy(Vendor.find(params[:id]))
	# end

	private

	def vs_params
		params.require(:vendor_sweet).permit(:price_sold,:sweet_id,:vendor_id)
	end
end

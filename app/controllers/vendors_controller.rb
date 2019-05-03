class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
  	found_vendor
  end

  def edit
  	found_vendor
  end

  def update
  	if found_vendor.update(vendor_params)
  		redirect_to found_vendor
  	else
  		render :edit
  	end
  end

  def new
  	@vendor = Vendor.new
  end

  def create
  	@vendor = Vendor.create(vendor_params)
  	if @vendor.valid?
  		redirect_to @vendor
  	else
  		render :new
  	end
  end

  def destroy
  	found_vendor.stocks.destroy_all
  	Vendor.destroy(params[:id])
  	redirect_to vendors_path
  end

  private
  def vendor_params
  	params.require(:vendor).permit(:name)
  end

  def found_vendor
  	@vendor = Vendor.find(params[:id])
  end

end

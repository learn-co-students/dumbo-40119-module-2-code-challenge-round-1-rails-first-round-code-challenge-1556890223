class VendorSweetsController < ApplicationController

  def index
    @vendorsweets = VendorSweet.all
  end

  def show
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def new
    @vendorsweet = VendorSweet.new
  end

  def create
    @vendorsweet = VendorSweet.create(vendorsweet_params)
    if @vendorsweet.valid?
      redirect_to @vendor
    else
      render :new
    end
  end

  def edit
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def update
    @vendorsweet = VendorSweet.find(params[:id])
    if @vendorsweet.update(vendorsweet_params).valid?
      redirect_to vendor_sweets
    else
      render :edit
    end
  end

  private
  def vendorsweet_params
    params.require(:vendorsweet).permit(:price, :vendor_id, :sweet_id)
  end
end

class VendorSweetsController < ApplicationController

  def new
    @vendorsweet = VendorSweet.new
  end

  def create
    @vendorsweet = VendorSweet.create(vendorsweet_params)
    if @vendorsweet.valid?
      @vendor = Vendor.find(@vendorsweet[:vendor_id])
      redirect_to vendor_path(@vendor)
    else
      render 'new'
    end
  end

  private
  def vendorsweet_params
    params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
  end
end

class VendorSweetsController < ApplicationController

  def new
    @vendors = Vendor.all
    @sweets = Sweet.all
    @vendor = Vendor.find(params[:vendor])
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

  def edit
    @vendors = Vendor.all
    @sweets = Sweet.all
    if params[:vendor]
      @vendor = Vendor.find(params[:vendor])
    end
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:vendor_sweet][:vendor_id])
    @vendorsweet = VendorSweet.find(params[:id])
    if @vendorsweet.update(vendorsweet_params)
      redirect_to @vendor
    else
      @vendors = Vendor.all
      @sweets = Sweet.all
      render 'edit'
    end
  end

  private
  def vendorsweet_params
    params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
  end
end

class VendorSweetsController < ApplicationController

  def index
    @vendor_sweet = VendorSweet.all
  end

  def new
    @vendor_sweet = VendorSweet.new
    all_sweets
    all_vendors
  end

  def create
    all_sweets
    all_vendors
    @vendor_sweet = VendorSweet.create(vs_params)
    @vendor = Vendor.find(@vendor_sweet.vendor.id)

    if @vendor_sweet.valid?
      redirect_to @vendor
    else
      render :new
    end
  end

  private
  def vs_params
    params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
  end

  def all_sweets
    @sweets = Sweet.all
  end

  def all_vendors
    @vendors = Vendor.all
  end

end

class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create(vendor_params)
    redirect_to vendor_path(@vendor_sweet.vendor_id)
  end

  def show
    vendor_find
  end


  private

  def vendor_params
    params.require(:vendor).permit(:name)
  end

  def vendor_find
    @vendor = Vendor.find(params[:id])
  end


end

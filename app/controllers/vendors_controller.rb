class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
  @vendor = Vendor.find(params[:id])
  end

  def edit
    @vendor = Vendor.find(params[:id])
  @vendor.update(vendor_params)
  redirect_to @vendor
  end

  def create
    @vendor = Vendor.create(vendor_params)
  end

  def new
@vendor = Vendor.new(vendor)
  end

private

def vendor_params
  params.require(:vender).permit(:name)
end



end

class VendorSweetsController < ApplicationController
  before_action :get_vendor_sweet, only: [:show, :destroy]

  def index
    @vendor_sweets = VendorSweet.all
  end

  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor = Vendor.find(params[:id])
    if @vendor_sweet.create(vendor_sweet_params)
      redirect_to @vendor
    else
      render :new
    end
  end

end

private

def vendor_sweet_params
  params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
end

def get_vendor_sweet
  @vendor_sweet = VendorSweet.find(params[:id])
end

end

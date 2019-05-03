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
        redirect_to vendors_path
      else
        render :new
      end
  end

private

  def get_vendorsweet
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def vendorsweet_params
    params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
  end
end

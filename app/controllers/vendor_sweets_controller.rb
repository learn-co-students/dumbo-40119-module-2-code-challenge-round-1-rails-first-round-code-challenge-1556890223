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
    redirect_to @vendorsweet
  else
    render :new
  end
  end


  private

  def vendorsweet_params
    params.require(:vendor_sweet).permit(:name, :vendor_id, :sweet_id)
  end

end

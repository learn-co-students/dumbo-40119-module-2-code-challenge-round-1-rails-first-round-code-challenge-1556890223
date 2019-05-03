class VendorSweetsController < ApplicationController

  def index
    @vendor_sweets = VendorSweet.all
  end

  def show
    @vendor_sweet = VendorSweet.find(params[:id])
    @sweet = @vendor_sweet.sweet
    @vendor = @vendor_sweet.vendor
  end

  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
     @vendor_sweet = VendorSweet.create(vendor_sweet_params)
     redirect_to @vendor_sweet
  end

  def edit
    @vendor_sweet = VendorSweet.find(params[:id])
  end

  def update
    @vendor_sweet = VendorSweet.find(params[:id])
    @vendor_sweet.update(vendor_sweet_params)
    redirect_to @vendor_sweet
  end

  def destroy
    @vendor_sweet.destroy
    redirect_to vendor_sweets_path
  end


  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
  end
end

class VendorSweetsController < ApplicationController

  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    # byebug
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    if @vendor_sweet.valid?
      redirect_to vendors_path
    else
      render 'new'
    end
  end


  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
  end


end

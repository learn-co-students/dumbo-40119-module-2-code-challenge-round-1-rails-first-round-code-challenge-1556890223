class VendorSweetsController < ApplicationController

  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    if @vendor_sweet.valid?
      redirect_to vendor_path(params[:vendor_sweet][:vendor_id])
    else
      render :new
    end
  end

  private
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
  end
end

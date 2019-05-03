class VendorSweetsController < ApplicationController

  def index
    @vendor_sweets = VendorSweet.all
  end

  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if @vendor_sweet.valid?
      @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor_id)
    else
      render :new
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end

  def vendor_sweet_find
    @vendor_sweet = VendorSweet.find(params[:id])
  end


end

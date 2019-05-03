class VendorSweetsController < ApplicationController
  def show
    @vendor_sweet = VendorSweet.find(params[:id])
  end

  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if @vendor_sweet.save
      redirect_to @vendor_sweet.vendor
    else
      render :new
    end
  end
end

private

def vendor_sweet_params
  params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
end

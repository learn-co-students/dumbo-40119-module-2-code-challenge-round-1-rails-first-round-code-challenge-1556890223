class VendorSweetsController < ApplicationController
  before_action :get_vendor_sweet, only: [:show]

  def index
    @vendor_sweets = VendorSweet.all
  end

  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor_sweet = VendorSweet.new(vs_params)
  if @vendor_sweet.valid?
    @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor_id)
    else
      render :new
    end
  end

private

def vs_params
  params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
end

def get_vendor_sweet
  @vendor_sweet = VendorSweet.find(params[:id])
end

end

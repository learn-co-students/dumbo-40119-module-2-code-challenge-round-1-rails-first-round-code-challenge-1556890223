class VendorSweetsController < ApplicationController

  def index
    @vendorsweets = VendorSweet.all
  end 

  def new
    @vendorsweet = VendorSweet.new()
  end

  def create
  @vendorsweet = VendorSweet.create(vendorsweet_params)
    if @vendorsweet.valid?
      @vendorsweet.save
      redirect_to post_path(@vendorsweet.id)
    else
      render "new"
    end
end





private

def vendorsweet_params
  params.require(:vendor_sweet).permit(:price, :vendor, :sweet)
end



end

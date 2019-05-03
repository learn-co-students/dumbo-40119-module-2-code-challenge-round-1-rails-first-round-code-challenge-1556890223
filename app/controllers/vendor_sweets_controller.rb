class VendorSweetsController < ApplicationController
  def new
    @vendorsweet = VendorSweet.new
  end

  def create
    #@vendor = Vendor.find(params[:vendor_id])
    @vendorsweet = VendorSweet.new(vendorsweet_params)
    if VendorSweet.create
      redirect_to vendor_path(@vendorsweet.vendor_id)
    else
      render :new
    end
  end

  #Create works by doing a model.new
  #then a if else statement
  #the if the transaction for creation is valid it will redirect to the vendors page
  #if not valid it will render :new again with the error messages displayed

  #validating is working in the cmd but the syntax above does not work.

  private

  def vendorsweet_params
    params.require(:vendor_sweet).permit(:sweet_id,:vendor_id,:price)
  end
end

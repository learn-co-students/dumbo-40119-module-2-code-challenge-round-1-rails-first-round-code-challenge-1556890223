class VendorsweetsController < ApplicationController

  def index
    @vendorsweets = Vendorsweet.all
  end

  private


  def vendorsweets_params
    params.require(:vendorsweets).permit(:vendor_id, :sweet_id)
  end
end

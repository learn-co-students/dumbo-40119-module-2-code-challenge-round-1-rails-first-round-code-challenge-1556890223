class VendorSweetsController < ApplicationController

    def index
        @vendor_sweets = VendorSweet.all
    end

    def show
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def new
        @vendor_sweet = VendorSweet.new
    end

    def create
    @vendor_sweet = VendorSweet.create(vs_params)
    if @vendor_sweet.valid?
        redirect_to vendor_path(@vendor_sweet.vendor_id)
    else 
        render :new
        end
    end
    



    private

    def vs_params
        params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
    end
end

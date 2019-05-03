class VendorSweetsController < ApplicationController

    def index
        @vendor_sweets = VendorSweet.all 
    end 

    def new
        @vendor_sweet = VendorSweet.new
    end 

    def show
        @vendor_sweet = VendorSweet.find(params[:id])
    end 

    def create
        @vendor_sweet = VendorSweet.create(vendor_sweet_params)
        if @vendor_sweet.valid?
            # byebug
            redirect_to @vendor_sweet.vendor
        else
            render :new
        end 
    end 

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
    end 
    
end

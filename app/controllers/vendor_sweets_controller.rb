class VendorSweetsController < ApplicationController
    def index
        @vendor_sweets = VendorSweet.all
    end

    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end

    def create
        @vendors = Vendor.all
        @sweets = Sweet.all
        @vendor_sweet = VendorSweet.create(check_params)
        #byebug
        #redirect to selected vendor's page
        if @vendor_sweet.valid?
            redirect_to vendor_path(check_params[:vendor_id])
        else
            render :new
        end
        
    end

    private

    def check_params
        params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
    end
end

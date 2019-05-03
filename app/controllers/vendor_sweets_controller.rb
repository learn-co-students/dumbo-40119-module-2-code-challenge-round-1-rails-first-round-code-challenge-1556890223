class VendorSweetsController < ApplicationController
    # def index
    #     @vendor_sweets = VendorSweet.all
    # end

    def new
        @vendor_sweet = VendorSweet.new
        # @vendors = Vendor.all
        # @sweets = Sweet.all
        get_all_sweets_and_vendors 
    end

    def create
        # @vendors = Vendor.all
        # @sweets = Sweet.all
        get_all_sweets_and_vendors
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

    #method for getting all instance of vendors and sweets

    def get_all_sweets_and_vendors
        @vendors = Vendor.all
        @sweets = Sweet.all
    end
end

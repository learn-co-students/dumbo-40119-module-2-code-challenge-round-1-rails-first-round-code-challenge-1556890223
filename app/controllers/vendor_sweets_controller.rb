class VendorSweetsController < ApplicationController

  before_action :get_vendor_sweet, only: [:show, :edit, :update]

    def index
      @vendor_sweets = VendorSweet.all
    end

    # def show
    #   @vendor_sweet = VendorSweet.find(params[:id])
    # end

    def new
      @vendor_sweet = VendorSweet.new
    end

    # def create
    #   @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    #   redirect_to @vendor_sweet
    # end

    def create
      @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if @vendor_sweet.valid?
          @vendor_sweet.save
          redirect_to @vendor_sweet
        else
          render :new
        end
    end

    # def edit
    # @vendor_sweet = VendorSweet.find(params[:id])
    # end

    # def update
    #   @vendor_sweet.update(vendor_sweet_params)
    #   redirect_to @vendor_sweet
    # end

    def update
        if @vendor_sweet.update(vendor_sweet_params)
          redirect_to @vendor_sweet
        else
          render :edit
        end
    end

    def destroy
      VendorSweet.destroy(params[:id])
      redirect_to vendor_sweets_path
    end

    private

    def get_vendor_sweet
      @vendor_sweet = VendorSweet.find(params[:id])
    end

    def vendor_sweet_params
      params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
    end

end

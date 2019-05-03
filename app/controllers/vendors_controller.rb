class VendorsController < ApplicationController

  before_action :get_vendor, only: [:show, :edit, :update]

  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
      if @vendor.valid?
        @vendor.save
        redirect_to @vendor
      else
        render :new
      end
    end

  def update
    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      render :edit
    end
  end

  def destroy
    Vendor.destroy(params[:id])
    redirect_to vendors_path
  end

  private

  def get_vendor
    @vendor = Vendor.find(params[:id])
  end

  def vendor_params
    params.require(:vendor).permit(:name)
  end

end

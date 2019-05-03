class VendorsController < ApplicationController
  before_action :get_vendor, only: [:show, :edit, :update]
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create(vendor_params)
    if vendor.valid?
      redirect_to @vendor
    else
      render :new
    end
  end

  def update
    @vendor.update(vendor_params)
    if @vendor.valid?
      redirect_to vendor_path @vendor
    else
      render :edit
    end
  end

  private
  def get_vendor
    @vendor = Vendor.find(params[:id])
  end

  def vendor_params
    params.require(:vendor).permit(:name)
  end

end

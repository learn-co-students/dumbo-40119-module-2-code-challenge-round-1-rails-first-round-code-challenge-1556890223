class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create(vendor_params)
    if @vendor.valid?
      redirect_to @vendor
    else
      render :new
    end
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:id])
    if @vendor.update(vendor_params).valid?
      redirect_to vendor_sweets
    else
      render :edit
    end
  end

  private
  def vendor_params
    params.require(:vendor).permit(:name)
  end
end

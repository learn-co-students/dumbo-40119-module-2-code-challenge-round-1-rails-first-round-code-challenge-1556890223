class VendorsController < ApplicationController
	before_action :get_vendor, only: :show


  def index
    @vendors = Vendor.all
  end

  def show
  	# byebug
  	get_vendor
  end

  private

  def get_vendor
  	@vendor = Vendor.find(params[:id])
  end

end

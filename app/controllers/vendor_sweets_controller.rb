class VendorSweetsController < ApplicationController

  def index
    @vs = VendorSweet.all
  end

def show
  @vs = VendorSweet.find(params[:id])
end

def new
  @vs = VendorSweet.new
end

def create
  @vs = VendorSweet.create(vs_params)
redirect_to @vs
end

def edit
  @vs = VendorSweet.find(params[:id])
  redirect_to @vs
end

def update
  @vs = VendorSweet.find(params[:id])
  @vs.update(vs_params)
end

def destroy
end

private

def vs_params
params.require(:vendor_sweets).permit(:price, :sweet_id, :vendor_id)
end




end

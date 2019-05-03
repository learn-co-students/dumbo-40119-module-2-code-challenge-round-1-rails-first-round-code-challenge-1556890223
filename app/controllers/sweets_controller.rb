class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

def show
  @sweet = Sweet.find(params[:id])
end

def new
  @sweet = Sweet.new
end

def create
  @sweet = Sweet.create(sweet_params)
redirect_to @sweet
end

def edit
  @sweet = VendorSweet.find(params[:id])
end

def update
  @sweet = VendorSweet.find(params[:id])
  @sweet.update(sweet_params)
end

def destroy
end

private

def sweet_params
params.require(:sweets).permit(:name)
end

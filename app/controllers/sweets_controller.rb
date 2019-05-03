class SweetsController < ApplicationController

  def index
    @sweets = Sweet.all
  end

  def show
    @Sweet = Sweet.find(params[:id])
  end

  def new
    @Sweet = Sweet.new
  end

  def create
    @Sweet = Sweet.create(Sweet_params)
    if @Sweet.valid?
      redirect_to @vendor
    else
      render :new
    end
  end

  def edit
    @Sweet = Sweet.find(params[:id])
  end

  def update
    @Sweet = Sweet.find(params[:id])
    if @Sweet.update(Sweet_params).valid?
      redirect_to vendor_sweets
    else
      render :edit
    end
  end

  private
  def Sweet_params
    params.require(:Sweet).permit(:name)
  end


end

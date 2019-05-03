class SweetsController < ApplicationController

  before_action :get_sweet, only: [:show, :edit, :update]

  def index
    @sweets = Sweet.all
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.new(sweet_params)
      if @sweet.valid?
        @sweet.save
        redirect_to @sweet
      else
        render :new
      end
    end

  def update
    if @sweet.update(sweet_params)
      redirect_to @sweet
    else
      render :edit
    end
  end

  def destroy
    Vendor.destroy(params[:id])
    redirect_to sweets_path
  end

  private

  def get_sweet
    @sweet = Sweet.find(params[:id])
  end

  def sweet_params
    params.require(:sweet).permit(:name)
  end

end

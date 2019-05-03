class SweetsController < ApplicationController
  before_action :get_sweet, only: [:show, :edit, :update]
  def index
    @sweets = Sweet.all
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.create(sweet_params)
    if @sweet.valid?
      redirect_to @sweet
    else
      render :new
    end
  end

  def update
    @sweet.update(sweet_params)
    if @sweet.valid?
      redirect_to sweet_path @sweet
    else
      render :edit
    end
  end


  private
  def get_sweet
    @sweet = Sweet.find(params[:id])
  end

  def sweet_params
    params.require(:sweet).permit(:name)
  end
end

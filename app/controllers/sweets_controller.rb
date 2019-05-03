class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
  	found_sweet
  end

  def edit
  	found_sweet
  end

  def update
  	if found_sweet.update(sweets_params)
  		redirect_to found_sweet
  	else 
  		render :edit
  	end
  end

  def new 
  	@sweet = Sweet.new
  end

  def create
  	@sweet = Sweet.create(sweets_params)
  	if @sweet.valid?
  		redirect_to @sweet
  	else
  		render :new
  	end
  end

  def destroy
  	found_sweet.stocks.destroy_all
  	Sweet.destroy(params[:id])
  	redirect_to sweets_path
  end

  private
  def sweets_params
  	params.require(:sweet).permit(:name)
  end

  def found_sweet
  	@sweet = Sweet.find(params[:id])
  end
end

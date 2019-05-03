class SweetsController < ApplicationController
  def index #List of sweet's names
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  end


end

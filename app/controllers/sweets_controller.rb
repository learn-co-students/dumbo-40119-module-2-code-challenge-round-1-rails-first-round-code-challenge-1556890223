class SweetsController < ApplicationController
  before_action :get_sweet, only: [:show]

  def index
    @sweets = Sweet.all
  end

  private

  def get_sweet
    @sweet = Sweet.find(params[:id])
  end

end

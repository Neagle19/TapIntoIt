class BreweriesController < ApplicationController
  # before_action :set_brewery, only: [:show]

  def index
    @breweries = Brewery.all
  end

  def new
  end

  def create
  end

  def show
    @brewery = Brewery.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_brewery
    @brewery = Brewery.find(params[:id]) # or :brewery_id
  end
end

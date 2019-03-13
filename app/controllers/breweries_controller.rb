class BreweriesController < ApplicationController
  # before_action :set_brewery, only: [:show]

  def index
    @breweries = Brewery.all
  end

  def landing
  end

  def index
    @breweries = Brewery.where.not(latitude: nil, longitude: nil)

    if params[:search].present?
      @breweries = Brewery.global_search(params[:search])
    else
      @breweries = Brewery.all
    end
    if params[:search_place].present?
      @breweries = @breweries.near(params[:search_place], 50)
    end
    @markers = @breweries.where.not(latitude: nil, longitude: nil).map do |brewery|
      {
        lng: brewery.longitude,
        lat: brewery.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { brewery: brewery })
      }

  end
  end

  def show

    @brewery = brewery.find(params[:id])

  end

# TZ added
  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new brewery_params
    @brewery.user = current_user
    if @brewery.save!
      redirect_to brewery_path(@brewery)
    else
      render :new
    end
  end

  def top
    breweries = Brewery.all
    collect_breweries = {}
    breweries.each do |brewery|
      average =  brewery.gimme_average
      collect_breweries[brewery.id] = [average, brewery]
    end
    @brewery_top = collect_breweries.sort_by { |_k, v| v[0] }.reverse.first(5)
  end
  def denied
    set_booking3
  end



  def destroy
    @brewery = Brewery.find(params[:id])
    # @brewery.user = current_user
    if @brewery.destroy
      redirect_to profile_path(current_user.id)
    else
      render :new
    end
  end
# TZ private
  private

  def Brewery_params
    params.require(:brewery).permit(:name, :location, :description, :capacity, :price, :user_id, :make, :model, :ac, :fuel, :consumption, :min_age, :search, :year, :kilometers, :photo, :photo_cache)
  end

  def set_brewery
    @brewery = Brewery.find(params[:id]) # or :brewery_id
  end
end

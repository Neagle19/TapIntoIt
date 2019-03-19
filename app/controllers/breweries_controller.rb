class BreweriesController < ApplicationController
  # before_action :set_brewery, only: [:show]
  before_action :verify_role, only: [:new, :create, :destroy, :edit, :update]
  before_action :verify_ownership, only: [:destroy, :edit, :update]


  def landing
  end

  def index
    @breweries = Brewery.where.not(latitude: nil, longitude: nil)

    if params[:search].present?
      @breweries = Brewery.global_search(params[:search])
    elsif params[:show].present?
      @breweries = Brewery.all
    elsif current_user
      @breweries = Brewery.near([current_user.lat, current_user.lng], 10)
    else

    end
    # if params[:search_place].present?
    #   @breweries = @breweries.near(params[:search_place], 50)
    # end
    @markers = Brewery.where.not(latitude: nil, longitude: nil).map do |brewery|
      {
        lng: brewery.longitude,
        lat: brewery.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { brewery: brewery })
      }
    end
  end


  def edit
    @brewery = Brewery.find(params[:id])
  end

  def update
    @brewery = Brewery.find(params[:id])
    @brewery.update(brewery_params)
    if @brewery.save(brewery_params)
      redirect_to profile_path(current_user.id)
    else
      render :new
    end
  end

  def show
    @brewery = Brewery.find(params[:id])
    @breweries = Brewery.where.not(latitude: nil, longitude: nil)
    @beers = Beer.where(brewery_id: @brewery.id)
    # @markers = @breweries.where.not(latitude: nil, longitude: nil).map do |brewery|
    #   {
    #     lng: brewery.longitude,
    #     lat: brewery.latitude,
    #     infoWindow: render_to_string(partial: "infowindow", locals: { brewery: brewery })
    #   }
  # end
    if @brewery.longitude.present? && @brewery.latitude.present?
      @markers = [{lng: @brewery.longitude, lat: @brewery.latitude, infoWindow: render_to_string(partial: "infowindow", locals: { brewery: @brewery })}]
    end
  end


# TZ added
  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
    # @brewery.user = current_user
    if @brewery.save!
      redirect_to profile_path(current_user.id)
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

  def brewery_params
    params
      .require(:brewery)
      .permit(:name, :address, :email, :phone_number, :photo, :description, :search, :website)
      .merge(user: current_user)
  end

  def set_brewery
    @brewery = Brewery.find(params[:id]) # or :brewery_id
  end

  def get_user_brewery
    current_user.breweries.find(params[:id])
  end

  def verify_role
    if !current_user.admin?
      redirect_to root_path
    end
  end

  def verify_ownership
    if !get_user_brewery
      redirect_to root_path
    end
  end

  def search
    if params[:search].present?
      @breweries = Brewery.global_search(params[:search])
    else
      @breweries = Brewery.all
    end

    @markers = @breweries.where.not(latitude: nil, longitude: nil).map do |brewery|
      {
        lng: brewery.longitude,
        lat: brewery.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { brewery: brewery })
      }
    end
  end
end

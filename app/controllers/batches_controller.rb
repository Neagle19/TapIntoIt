class BatchesController < ApplicationController

  before_action :verify_role, only: [:new, :create]

  def index
    @user = current_user
    @beer = Beer.find(params[:beer_id])
    @batches = @beer.batches
  end

  def show
    @user = current_user
    @batch = Batch.find(params[:id])
  end

  def new
    @batch = Batch.new
    @beer = Beer.find(params[:beer_id])
  end

  def create
    @batch = Batch.new(batch_params)
    @batch.beer = Beer.find(params[:beer_id])
    @batch.brewery = @batch.beer.brewery
    if @batch.save!
      redirect_to beer_batches_path(@batch.beer)
    else
      render :new
    end
  end

  private

  def batch_params
    params.require(:batch).permit(:bottled_date, :description, :quantity)

  end

  def verify_role
    if !current_user.admin?
      redirect_to root_path
    end
  end
end



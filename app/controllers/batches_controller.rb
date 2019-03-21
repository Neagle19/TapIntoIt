class BatchesController < ApplicationController
  before_action :verify_role, only: [:new, :create]

  def index
    @user = current_user
    @beer = Beer.find(params[:beer_id])
    @batches = @beer.batches
  end

  def show
    # @beer = Beer.find(params[:beer_id])
    @user = current_user
    @batch = Batch.find(params[:id])
    @review_batches = ReviewBatch.where(batch_id: @batch.id)
    @beer = @batch.beer

    ratings = ReviewBatch.where(batch: self).pluck(:rating)
    return 0 if ratings.blank?
    avg = ratings.sum / ratings.size.to_f
    data = @beer.batches.map { |batch| { batch.bottled_date => batch.avg }}
    @chart_data = data.inject(:merge)
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

  # def show_graph
  #   render json: ReviewBatch.rating.group_by_day(:created_at).count
  # end

  private

  def batch_params
    params.require(:batch).permit(:bottled_date, :description, :quantity, :brewingstart, :stepone, :steponedescription, :steptwo, :steptwodescription, :stepthree, :stepthreedescription, :stepfour, :stepfourdescription, :stepfive, :stepfivedescription, :stepsix, :stepsixdescription, :stepseven, :stepsevendescription, :stepeight, :stepeightdescription, :stepnine, :stepninedescription, :stepten, :steptendescription, :stepeleven, :stepelevendescription, :steptwelve, :steptwelvedescription, :ingredientone, :ingredientonedesc, :ingredienttwo, :ingredienttwodesc, :ingredientthree, :ingredientthreedesc, :ingredientfour, :ingredientfourdesc, :ingredientfive, :ingredientfivedesc, :ingredientsix, :ingredientsixdesc, :ingredientseven, :ingredientsevendesc, :ingredienteight, :ingredienteightdesc, :brewer)
  end

  def verify_role
    if !current_user.admin?
      redirect_to root_path
    end
  end
end

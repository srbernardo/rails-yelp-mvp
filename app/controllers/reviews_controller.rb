class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @parmas = review_params
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    respond_to do |format|
      if @review.save
        format.html { redirect_to restaurant_url(@restaurant), notice: "Review was successfully created." }
        @review.save
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end

  end

  def index
    @reviews = Review.all
  end

  def show
    @reviews = Review.where(restaurant_id: params[:id])
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

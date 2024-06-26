class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(reviews_params)
    @review.save
    redirect_to restaurant_path(params[:restaurant_id])
  end

  private

  def reviews_params
    params.require(:review).permit(:rating, :content)
  end
end

class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(set_review)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant) # it needs the restaurants id in the path
  end

  private

  def set_review
    params.require(:review).permit(:content, :rating)
  end
end

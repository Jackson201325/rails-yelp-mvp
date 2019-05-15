class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(set_review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      flash[:success] = "You have successfully submited the review"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:notice] = "Something went wrong"
      render :new
    end
  end

  private
  def set_review_params
    params.require('review').permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end

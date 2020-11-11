class ReviewsController < ApplicationController

def new
    # create an empty review for the form
    @restaurant = Restaurant.find( params[:restaurant_id] )
    @review = Review.new

    # hidden
    # renders the view
  end

  def create

    @review = Review.new(strong_params)
    # find a restaurant and associate it to the review
    @restaurant = Restaurant.find( params[:restaurant_id] )
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant.id)
  end

  private

  def strong_params
    params.require(:review).permit(:content, :rating)
  end


end

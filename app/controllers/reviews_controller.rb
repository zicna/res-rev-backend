class ReviewsController < ApplicationController

  before_action :get_review, only: [:show, :update, :destroy]
  def show
  end

  def index
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review.as_json(options)
    else
      render json: {error: 'Something went wrong'}
    end
  end

  def edit
  end

  def update
  end

  def destroy
    # byebug
    @review.destroy
    render json: @review.as_json(options)
  end
private
def review_params
  params.require(:review).permit(:content, :mark, :restaurant_id)
end

def options
  {
    only: [:id, :content, :mark, :restaurant_id]
  }
end

def get_review
  @review = Review.find_by(id: params[:id])
end

end

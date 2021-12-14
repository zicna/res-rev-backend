class ReviewsController < ApplicationController
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

end

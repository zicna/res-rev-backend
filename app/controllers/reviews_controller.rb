class ReviewsController < ApplicationController

  before_action :get_review, only: [:show, :update, :destroy]
  def show
  end

  def index
  end

  def create
    @review = Review.new(review_params)
    if @review.save
    #! option two 
      restaurant = Restaurant.find_by(id: @review.restaurant_id)
      render json: restaurant.as_json(restaurant_options)
      # render json: @review.as_json(options)
    else
      render json: {error: 'Something went wrong'}
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @review.destroy
    #! option two 
    restaurant = Restaurant.find_by(id: @review.restaurant_id)

    render json: restaurant.as_json(restaurant_options)
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

#! option two 

def restaurant_options
    {
    only: [:id, :name, :location, :res_type, :image, :description],
    methods: [:rating, :review_count],
        include: {
          reviews: {except: [:created_at, :updated_at]}

        }
    }
end

end

class RestaurantsController < ApplicationController
  before_action :get_restaurant, only: [:show, :edit, :destroy]

  before_action :get_restaurants, only: :index

  def show

    render json: @restaurant.as_json(options)
  end

  def index

    render json: @restaurants.as_json(options)
  end

  def new
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    if restaurant.save
      render json: restaurant.as_json(options)
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
    @restaurant.destroy
    # render json: {id: `#{@restaurant.id}`, message: `#{@restaurant.name} has been deleted from database. Thank you!`}
    render json: @restaurant.id
  end

  private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :image, :res_type, :description)
  end

  def get_restaurant
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def get_restaurants
    @restaurants = Restaurant.all
  end

  def options
    {
    only: [:id, :name, :location, :res_type, :image, :description],
    methods: [:rating, :count_reviews],
        include: {
          reviews: {except: [:created_at, :updated_at]}

        }
    }
  end


end

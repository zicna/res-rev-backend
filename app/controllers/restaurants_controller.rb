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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :image, :res_type)
  end

  def get_restaurant
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def get_restaurants
    @restaurants = Restaurant.all
  end

  def options
    {
      except: [:created_at, :updated_at],
        include: {
          reviews: {except: [:created_at, :updated_at]}

        }
    }
  end


end

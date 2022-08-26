class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = "place_type ILIKE :query"
      @places = Place.where(sql_query, query: "%#{params[:query]}%")
    else
      @places = Place.all
    end
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def place_params
    params.require(:place).permit(:name, :place_type, :description, :price_day, :user_id, :photo)
  end
end

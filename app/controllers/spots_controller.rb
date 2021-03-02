class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update]

  def index
    @spot = Spot.all
  end

  def show
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      redirect_to root_path, notice: 'Spot bien modifié'
    else
      render :edit
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :location, :category, :description, photos: [])
  end
end

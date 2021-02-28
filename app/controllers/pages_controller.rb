class PagesController < ApplicationController
  def home
    @spots = Spot.all

    @spots = @spots.where(category: params[:category]) if params[:category].present?
    @spots = @spots.where("name ILIKE ?", "%#{params[:query]}%") if params[:query].present?
  end
end

class PagesController < ApplicationController

  def home
    @user = current_user
    @spots = Spot.all

    @spots = @spots.where(category: params[:category]) if params[:category].present?
    @spots = @spots.where("name ILIKE ?", "%#{params[:query]}%") if params[:query].present?

    @markers = @spots.geocoded.map do |spot|
      case spot.category
      when "Café"
        {
          lat: spot.latitude,
          lng: spot.longitude,
          infoWindow: render_to_string(partial: "shared/info_window", locals: { spot: spot }),
          image_url: helpers.asset_url('cafe.png')
        }
      when "Vue"
        {
          lat: spot.latitude,
          lng: spot.longitude,
          infoWindow: render_to_string(partial: "shared/info_window", locals: { spot: spot }),
          image_url: helpers.asset_url('vue.png')
        }
      when "Parc"
        {
          lat: spot.latitude,
          lng: spot.longitude,
          infoWindow: render_to_string(partial: "shared/info_window", locals: { spot: spot }),
          image_url: helpers.asset_url('park.png')
        }
      when "Archi"
        {
          lat: spot.latitude,
          lng: spot.longitude,
          infoWindow: render_to_string(partial: "shared/info_window", locals: { spot: spot }),
          image_url: helpers.asset_url('archi.png')
        }
      when "Shop"
        {
          lat: spot.latitude,
          lng: spot.longitude,
          infoWindow: render_to_string(partial: "shared/info_window", locals: { spot: spot }),
          image_url: helpers.asset_url('shop.png')
        }
      when "Food"
        {
          lat: spot.latitude,
          lng: spot.longitude,
          infoWindow: render_to_string(partial: "shared/info_window", locals: { spot: spot }),
          image_url: helpers.asset_url('food.png')
        }
      when "Fripe"
        {
          lat: spot.latitude,
          lng: spot.longitude,
          infoWindow: render_to_string(partial: "shared/info_window", locals: { spot: spot }),
          image_url: helpers.asset_url('fripe.png')
        }
      else
        {
          lat: spot.latitude,
          lng: spot.longitude,
          infoWindow: render_to_string(partial: "shared/info_window", locals: { spot: spot }),
          image_url: helpers.asset_url('ecolo.png')
        }
      end
    end
  end
end

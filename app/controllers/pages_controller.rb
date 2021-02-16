class PagesController < ApplicationController
  def home
    Spot.all
  end
end

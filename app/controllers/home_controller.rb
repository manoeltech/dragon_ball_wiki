class HomeController < ApplicationController
  layout "store_front"
  def index
    @races = Race.all
  end

  def show
    @avatar = Avatar.find(params[:id])
  end
end

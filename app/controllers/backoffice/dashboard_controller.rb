class Backoffice::DashboardController < ApplicationController
  before_action :authenticate_backoffice_user_admin!

  def index
    @avatars_count = Avatar.all.count
  end
end
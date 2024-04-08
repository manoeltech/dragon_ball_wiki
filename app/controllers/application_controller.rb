class ApplicationController < ActionController::Base
  before_action :authenticate_user_admin!
end

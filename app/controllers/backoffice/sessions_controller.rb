class Backoffice::SessionsController  < ::Devise::SessionsController
  before_action :authenticate_backoffice_user_admin!
end
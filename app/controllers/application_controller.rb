class ApplicationController < ActionController::Base

  layout :layout

  private

  def layout
    if devise_controller? && devise_mapping.name == :backoffice
      "backoffice"
    else
      "application"
    end
  end
end

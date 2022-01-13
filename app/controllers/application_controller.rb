class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    before_action :set_host

    def set_host
      Rails.application.routes.default_url_options[:host] = request.host_with_port
    end
    
    def configure_permitted_parameters
        added_attrs = [:username, :image, :occupation, :award, :password, :password_confirmation, :remove_image]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end

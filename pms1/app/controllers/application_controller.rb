class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def index
        @users = User.all
    end

    

    protected

    def configure_permitted_parameters
        
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phoneno, :email, :exp, :password, :password_confirmation, tech: [], roles: []])

    end

end

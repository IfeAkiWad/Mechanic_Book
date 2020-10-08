class ApplicationController < ActionController::Base
    helper_method :current_mechanic

    private
    
    def current_mechanic
        @mechanic ||= Mechanic.find_by_id(session[:mechanic_id])
    end
end

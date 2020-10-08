class ApplicationController < ActionController::Base

    def current_mechanic
        @mechanic ||= Mechanic.find_by_id(session[:mechanic_id])
    end
end

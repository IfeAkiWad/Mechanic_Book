class SessionsController < ApplicationController

    def new
    end

    def create
     @mechanic = Mechanic.find_by(email: params[:mechanic][:email])
        if @mechanic && @mechanic.authenticate(params[:mechanic][:password])
            session[:mechanic_id] = @mechanic.id 
            redirect_to vehicles_path
        else
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to mechanics_path
    end

end

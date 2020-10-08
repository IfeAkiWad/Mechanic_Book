class MechanicsController < ApplicationController

    def index
    end

    def show
    end

    def new
        @mechanic = Mechanic.new
    end

    def create
        @mechanic = Mechanic.new(mechanic_params)
        if @mechanic.save
            session[:mechanic_id] = @mechanic.id
            redirect_to vehicles_path
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def mechanic_params
        params.require(:mechanic).permit(:username, :email, :password)
    end

end

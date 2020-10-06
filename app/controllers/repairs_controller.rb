class RepairsController < ApplicationController

    def index
    end

    def show
        @repair = Repair.find_by_id(params [:id])
    end

    def new
        @repair = Repair.new
    end

    def create
        @repair = Repair.new(repair_params)
        if @repair.save
            redirect_to repair_path(@repair)
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

    def repair_params
        params.require(:repair).permit(:vehicle_id, :repair, :part, :price, :completed, vehicle_attributes: %i[:owner_name, :vin_number, :make, :model, :year, :type, :mileage, :symptom, :notes])
    end

end

class VehiclesController < ApplicationController

    def index
        @vehicles = Vehicle.all
    end

    def show
        @vehicle = Vehicle.find_by_id(params[:id])
    end

    def new
        @vehicle = Vehicle.new
    end

    def create
        @vehicle = Vehicle.new(vehicle_params)
        @vehicle.save
        redirect_to vehicle_path(@vehicle)
    end

    def edit
        @vehicle = Vehicle.find_by_id(params[:id])
    end

    def update
        @vehicle = Vehicle.find_by_id(params[:id])
        @vehicle.update(vehicle_params)
        redirect_to vehicle_path(@vehicle)
    end

    def destroy
        @vehicle = Vehicle.find_by_id(params[:id])
        @vehicle.destroy
        redirect_to vehicles_path
    end

    private

    def vehicle_params
        params.require(:vehicle).permit(:owner_name, :vin_number, :make, :model, :year, :type, :mileage, :symptom, :notes )
    end

end

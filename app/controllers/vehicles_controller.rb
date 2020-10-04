class VehiclesController < ApplicationController
    befor_action :set_vehicle, only: %i[:show, :edit, :update, :destroy]

    def index
        @vehicles = Vehicle.all
    end

    def show
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
    end

    def update
        @vehicle.update(vehicle_params)
        redirect_to vehicle_path(@vehicle)
    end

    def destroy
        @vehicle.destroy
        redirect_to vehicles_path
    end

    private

    def vehicle_params
        params.require(:vehicle).permit(:owner_name, :vin_number, :make, :model, :year, :type, :mileage, :symptom, :notes )
    end

    def set_vehicle
        @vehicle = Vehicle.find_by_id(params[:id])
    end

end

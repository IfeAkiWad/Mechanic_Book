class VehiclesController < ApplicationController
    before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
    before_action :require_login

    def index
        @vehicles = current_mechanic.vehicles
    end

    def show
        # byebug
    end

    def new
        @vehicle = Vehicle.new
        # @type_options = %w[Convertible, Coupe, Sedan, Hatchback, Minivan, Station Wagon, Sport Utility, Sports Car, Van, Crossover, Pickup Truck, Mid-Size Car, Roadster, Full-Sized Car, Compact Car]
    end

    def create
        @vehicle = current_mechanic.vehicles.new(vehicle_params)
        if @vehicle.save
            redirect_to vehicle_path(@vehicle)
        else
            render :new
        end
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
        params.require(:vehicle).permit(:owner_name, :vin_number, :make, :model, :year, :vehicle_type, :mileage, :symptom, :notes)
    end

    def set_vehicle
        @vehicle = Vehicle.find_by_id(params[:id])
    end

    def require_login
        return head(:forbidden) unless session.include? :mechanic_id
    end

end

class RepairsController < ApplicationController
    before_action :require_login

    def index
        @repairs =  if params[:vehicle_id]
                        Repair.find_by_vehicle_id(params[:vehicle_id]).create_order_desc
                    else
                        current_mechanic.repairs
                    end
    end

    def show
        @repair = Repair.find_by_id(params[:id])
    end

    def new
        @vehicle = Vehicle.find_by_id(params[:vehicle_id]) #if params[:vehicle_id]
        @repair = Repair.new
        # @type_options = %w[Convertible, Coupe, Sedan, Hatchback, Minivan, Station Wagon, Sport Utility, Sports Car, Van, Crossover, Pickup Truck, Mid-Size Car, Roadster, Full-Sized Car, Compact Car]
    end

    def create
        # byebug
        @repair = current_mechanic.repairs.build(repair_params)
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
        params.require(:repair).permit(:vehicle_id, :repair, :part, :price, :completed, vehicle_attributes: [:owner_name, :vin_number, :make, :model, :year, :type, :mileage, :symptom, :notes])
    end

    def require_login
        return head(:forbidden) unless session.include? :mechanic_id
    end


end

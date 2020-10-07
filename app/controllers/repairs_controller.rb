class RepairsController < ApplicationController

    def index
        @repairs =  if params[:vehicle_id]
                        Repair.find_by_vehicle_id(params[:vehicle_id]).create_order_desc
                    else
                        Repair.all
                    end
    end

    def show
        @repair = Repair.find_by_id(params [:id])
    end

    def new
        @vehicle_id = params[:vehicle_id] if params[:vehicle_id]
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

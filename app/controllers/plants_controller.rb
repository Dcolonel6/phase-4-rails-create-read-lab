class PlantsController < ApplicationController

    def index 
        render json: Plant.all ,status: :ok
    end

    def show 
        plant = Plant.find_by(id: params[:id])
        if plant
            render json: plant, status: :ok
        else
            render json: {error: "Plant not found"}, status: :not_found
        end
    end

    def create 
        render json: Plant.create(plants_parameters), status: :created
    end

    private

    def plants_parameters
        params.permit(:name, :price, :image)
    end
end

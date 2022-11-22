class PlantsController  < ApplicationController


    def index
        render json: Plant.all
    
      end
      def show
        render json: Plant.find_by(id: (params[:id]))
        

      end
      def create
        plants=Plant.create(plant_params)
        render json: plants ,status: :created
      end
    
      private
      def plant_params
        params.permit(:name, :image, :price)
      end
end
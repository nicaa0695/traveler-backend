class DestinationsController < ApplicationController
    before_action :set_destination, only: [:show, :update, :destroy]

    def index 
        @destinations = Destination.all
        render json: @destinations
    end 

    def show
        render json: @destination
    end

    def create
        @destination = Destination.new(destination_params)
        if @destination.save
          render json: @destination
        else
          render json: {error: 'Unable to create a new destination.'}
        end
    end

    private
    def destination_params
        params.require(:destination).permit(:id, :name, :country, :image, :visited, :bucket_list)
    end

    def set_destination
        @destination = Destination.find(params[:id])
    end
end 
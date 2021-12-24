module Api
  module V1
    # HotelsController
    class HotelsController < ApplicationController
      def index
        @hotels = Hotel.all
        render json: HotelsSerializer.new(@hotels).as_json
      end

      def show
        hotel = Hotel.find(params[:id])
        if hotel
          render json: HotelSerializer.new(hotel).as_json, status: :ok
        else
          render status: :unprocessable_entity
        end
      end
    end
  end
end

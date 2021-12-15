module Api
  module V1
    class FavouritesController < ApplicationController
       include ActionController::HttpAuthentication::Token

      def index
        render json: HotelSerializer.new(@user.favorite_hotels).as_json
      end

      def create
        hotel = Hotel.find(favorite_params[:hotel_id])
       favorite = Favorite.new(user_id: @user.id, hotel_id: hotel.id)
        if favorite.save
          head :created
        else
          render json: { error: favorite.errors.messages }, status: :unprocessable_entity
        end
      end

      def destroy
        hotel = Hotel.find(params[:id])
        favorite = Favorite.find(hotel_id: hotel.id)

        if favorite.destroy
          head :no_content
        else
          render json: { error: favorite.errors.messages }, status: :unprocessable_entity
        end
      end

      private 

        def favorite_params
        params.require(:favorite).permit(:hotel_id)
      end

    end
  end
end

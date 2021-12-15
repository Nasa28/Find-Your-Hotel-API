module Api
  module V1
    class FavouritesController < ApplicationController
       include ActionController::HttpAuthentication::Token

      before_action :authenticate_user
      def index
       
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
      end

      private 

        def favorite_params
        params.require(:favorite).permit(:hotel_id)
      end

    end
  end
end

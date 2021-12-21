module Api
  module V1
    class FavouritesController < ApplicationController
       include ActionController::HttpAuthentication::Token
      before_action :authenticate_user

      def index
        render json: HotelsSerializer.new(@user.favourite_hotels).as_json
      end

      def create
        hotel = Hotel.find(favourite_params[:hotel_id])
       favourite = Favourite.new(user_id: @user.id, hotel_id:hotel.id)
        if favourite.save
          head :created
        else
          render json: { error: favourite.errors.messages }, status: :unprocessable_entity
        end
      end

      def destroy
        hotel = Hotel.find(params[:id])
        favorite = Favourite.find_by(params[:hotel_id])

        if favorite.destroy
          head :no_content
        else
          render json: { error: favorite.errors.messages }, status: :unprocessable_entity
        end
      end

      private 
      def authenticate_user
        token, _options = token_and_options(request)
        user_id = AuthenticationTokenService.decode(token)
       @user = User.find(user_id)
      rescue ActiveRecord::RecordNotFound
        render status: :unauthorized
      end

        def favourite_params
        params.require(:favourite).permit(:hotel_id)
      end

    end
  end
end

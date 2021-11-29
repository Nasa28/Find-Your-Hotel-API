module Api
  module V1
      class HotelsController < ApplicationController
        def index
          hotels = Hotel.all
          render json: HotelsSerializer.new(hotels).as_json
        end

        def create
        end

        def destroy
        end
      end
  end
end

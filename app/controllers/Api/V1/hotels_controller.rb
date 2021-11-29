module Api
  module V1
      class HotelsController < ApplicationController
        def index
          render json: Hotel.all
        end

        def create
        end

        def destroy
        end
      end
  end
end

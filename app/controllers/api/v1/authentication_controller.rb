module Api
  module V1
      class AuthenticationController < ApplicationController
      rescue_from ActionController::ParameterMissing, with: :missing_parameter
        def create

        
          render json: {token: '123'}, status: :created
        end

        private
        def missing_parameter()
          render json: {error: 'param is missing or the value is empty'}, status: :unprocessable_entity

        end
      end
  end
end
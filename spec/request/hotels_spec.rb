# frozen_string_literal: true

require 'rails_helper'

describe 'API test', type: :request do
  describe 'GET /Hotels' do
    before do
      FactoryBot.create(:hotel, name: 'Redotel suite',
                                address: '27 wokemba street federal housing Enugu',
                                description: 'of a room and board arrangement.',
                                price: 5000,
                                image_url: 'https://media.hotels.ng/')
      FactoryBot.create(:hotel, name: 'Tawaya Hotel',
                                address: '27 wokemba street federal  Trans Ekulu, Enugu',
                                description: ' as part of a room and board arrangement.',
                                price: 5000,
                                image_url: 'https://media.hotels.ng/')
    end

    it 'Should Return all Hotels' do
      get '/api/v1/hotels'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(2)
    end

    it 'Should not return undefined ' do
      get '/api/v1/hotels'
      expect(JSON.parse(response.body).size).to_not eq(nil)
    end
  end
end

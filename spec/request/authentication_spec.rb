require "rails_helper"

describe 'Authentication', type: :request do
  describe 'POST authentication' do
    it "Authenticates the client" do
      post '/api/v1/authenticate', params: {username: "chinasa", password: "password"}
      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)).to eq({
       "token"=> "123"
      })
    end

    it 'Should return error when username is not present' do
      post '/api/v1/authenticate', params: {password: "password"}
      expect(response).to have_http_status(:unprocessable_entity)
       expect(JSON.parse(response.body)).to include({
        'error' => 'param is missing or the value is empty'
      })
    end

    it 'Should return error when username is not present' do
      post '/api/v1/authenticate', params: {username: "chinasa"}
      expect(response).to have_http_status(:unprocessable_entity)
      expect(JSON.parse(response.body)).to eq({
        'error' => 'param is missing or the value is empty'
      })
    end

  end
end
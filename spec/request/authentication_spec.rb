require "rails_helper"

describe 'Authentication', type: :request do
  describe 'POST authentication' do
    it "Authenticates the client" do
      post '/api/v1/authenticate'
      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)).to eq({
       "token"=> "123"
      })
    end
  end
end
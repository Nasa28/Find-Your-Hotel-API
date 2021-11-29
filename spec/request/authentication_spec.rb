require "rails_helper"

describe 'Authentication', type: :request do
  describe 'POST authentication' do
    it "Authenticates the client" do
      post '/api/v1/authenticate'
    end
  end
end
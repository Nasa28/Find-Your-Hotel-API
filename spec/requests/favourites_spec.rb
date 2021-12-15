require 'rails_helper'

RSpec.describe "Favourites", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/favourites/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/favourites/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/favourites/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end

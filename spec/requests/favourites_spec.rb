require 'rails_helper'

RSpec.describe 'Favourites', type: :request do
  let(:user) { FactoryBot.create(:user, password: 'password') }
  let(:hotel) do
    FactoryBot.create(
      :hotel,
      name: 'Mahali Mzuri, Masai Mara, Kenya',
      address: 'Masai Mara, Kenya',
      description: 'camp to visit on the African continent."',
      price: 5000,
      image_url: 'https://cf.bstatic.com/xdata/images/h'
    )
  end
  before do
    allow(AuthenticationTokenService).to receive(:decode).and_return(user.id)
  end

  describe 'POST /index' do
    it 'It adds to favourite' do
      expect do
        post '/api/v1/favourites/',
             params: {
               favourite: {
                 hotel_id: hotel.id
               }
             }
      end.to change { Favourite.count }.from(0).to(1)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /favourites' do
    it 'returns all favourites' do
      post '/api/v1/favourites/',
           params: {
             favourite: {
               hotel_id: hotel.id
             }
           }
      get '/api/v1/favourites/'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end
  describe 'DELETE /favourites' do
    it 'Should remove a hotel from favourites' do
      post '/api/v1/favourites',
           params: {
             favourite: {
               hotel_id: hotel.id
             }
           }
      expect do
        delete "/api/v1/favourites/#{hotel.id}"
      end.to change { Favourite.count }.from(1).to(0)
      expect(response).to have_http_status(:no_content)
    end
  end
end

require 'rails_helper'

RSpec.describe "Favourites", type: :request do
let(:user) {FactoryBot.create(:user, password: 'password')}
let(:hotel) do
    FactoryBot.create(
      :hotel,
      name: 'Mahali Mzuri, Masai Mara, Kenya',
    address:'Masai Mara, Kenya',
    description:'Part of the Virgin Limited Edition collection, Sir Richard Bransons majestic safari camp in the Masai Mara is "just perfect," according to one voter. The seemingly space-age tents somehow rise up out of the landscape and blend in with it simultaneously. Wildlife remains abundant in the surrounding bush — ideal for the twice-daily game drives — and the guides are extremely knowledgeable. One respondent raved about the "excellent service," adding that "the hospitality provided at Mahali Mzuri resembles the name," which means beautiful place in Swahili. Another reader says simply that its "the best luxurious camp to visit on the African continent."',
    price: 5000,
    image_url:'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85884113.jpg?k=09f2920e4be00eb871524a1321e79113443169643a07f0999b04dc45163fae39&o=&hp=1'

    )
  end
  before do 
    allow(AuthenticationTokenService).to receive(:decode).and_return(user.id)
  end

  describe "POST /index" do
    it "It adds to favourite" do
      expect do
      post "/api/v1/favourites/",
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
      post "/api/v1/favourites/",
           params: {
             favourite: {
               hotel_id: hotel.id
             }
           }
      get "/api/v1/favourites/"
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

require 'rails_helper'

describe 'API test',  type: :request do 

  describe 'GET /Hotels' do
    before do
      FactoryBot.create(:hotel, name: 'Redotel suite',
    address:'27 wokemba street federal housing trans ekulu, Trans Ekulu, Enugu',
    description:'A hotel is an establishment that provides paid lodging on a short-term basis. ... Hotel rooms are usually numbered (or named in some smaller hotels and B&Bs) to allow guests to identify their room. Some boutique, high-end hotels have custom decorated rooms. Some hotels offer meals as part of a room and board arrangement.',
    price: 5000,
    image_url:'https://media.hotels.ng/img/h1001958/562/422/b1/redotel-suite-1001958-1.jpg'
)
      FactoryBot.create(:hotel, name: 'Tawaya Hotel',
    address:'27 wokemba street federal housing trans ekulu, Trans Ekulu, Enugu',
    description:'A hotel is an establishment that provides paid lodging on a short-term basis. ... Hotel rooms are usually numbered (or named in some smaller hotels and B&Bs) to allow guests to identify their room. Some boutique, high-end hotels have custom decorated rooms. Some hotels offer meals as part of a room and board arrangement.',
    price: 5000,
    image_url:'https://media.hotels.ng/img/h1001958/562/422/b1/redotel-suite-1001958-1.jpg'
)
    end

    it 'Returns all Hotels' do
        get '/api/v1/hotels'
        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body).size).to eq(2)
      end
  end
end
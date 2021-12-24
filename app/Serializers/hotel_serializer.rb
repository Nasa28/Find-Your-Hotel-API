# HotelSerializer
class HotelSerializer
  def initialize(hotel)
    @hotel = hotel
  end

  def as_json
    {
      id: hotel.id,
      name: hotel.name,
      address: hotel.address,
      description: hotel.description,
      price: hotel.price,
      image_url: hotel.image_url
    }
  end

  private

  attr_reader :hotel
end

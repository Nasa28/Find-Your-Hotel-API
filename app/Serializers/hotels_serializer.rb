# HotelsSerializer
class HotelsSerializer
  def initialize(hotels)
    @hotels = hotels
  end

  def as_json
    @hotels.map do |hotel|
      {
        id: hotel.id,
        name: hotel.name,
        address: hotel.address,
        description: hotel.description,
        price: hotel.price,
        image_url: hotel.image_url
      }
    end
  end

  private

  attr_reader :hotels
end

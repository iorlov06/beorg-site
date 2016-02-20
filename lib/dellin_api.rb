class DellinAPI
  attr_reader :name
  def initialize
    @name = "Деловые линии"
  end

  def get_approx_price(departure_city, arrival_city, weight, parcel_type)
    1488.12
  end

  def get_price(departure_city, arrival_city, weight, parcel_type,
                height, length, width, ens_price, fragile, delivery_type)
    228.5
  end

  def get_parcel_status (order_id)
    0
  end

  @@instance = DellinAPI.new

  def self.instance
    return @@instance
  end
end
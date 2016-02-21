class ExpressRuAPI
  attr_reader :name
  def initialize
    @name = "Express RU"
  end

  def get_approx_price(departure_city, arrival_city, weight, parcel_type)
    666
  end

  def get_price(departure_city, arrival_city, weight, parcel_type,
                height, length, width, ens_price, fragile, delivery_type)
    777
  end

  def get_parcel_status (order_id)
    1
  end

  @@instance = ExpressRuAPI.new

  def self.instance
    return @@instance
  end
end
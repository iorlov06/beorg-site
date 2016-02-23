class MajorExpressAPI
  attr_reader :name
  def initialize
    @name = "Major Express"
  end

  def get_approx_price(departure_city_code, arrival_cit_code, weight, parcel_type)
    55
  end

  def get_price(departure_city_code, arrival_city_code, weight, parcel_type,
                height, length, width, ens_price, fragile, delivery_type)
    73
  end

  def create_order(dep_index, dep_street, dep_house, dep_corpus, dep_flat,
                   dep_surname, dep_name, dep_partonym, dep_phone,
                   arr_index, arr_street, arr_house, arr_corpus, arr_flat,
                   arr_surname, arr_name, arr_paronym, arr_phone,
                   note, capture_time, contact_email)
    true
  end

  def get_parcel_status (order_id)
    3
  end

  @@instance = MajorExpressAPI.new

  def self.instance
    return @@instance
  end
end
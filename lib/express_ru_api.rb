class ExpressRuAPI
  attr_reader :name
  def initialize
    @name = "Express RU"
    @host = "express.ru"
  end

  def get_approx_price(departure_city_code, arrival_city_code, weight, parcel_type)
=begin
    sig = generate_signature()
    path = "/api/office/new_order_w_invoices"

    params = {
        "country_from" => "Россия",
        "place_from" => get_place(departure_city_code),
        "country_to" => "Россия",
        "place_to" => get_place(arrival_city_code),
        "cargo_type" => get_type(parcel_type),
        "weight" => weight,
        "cargo_form" => 2,
        "box_length" => 0.2, #Взято с потолка для приблизительных рассчётов
        "box_width" => 0.2, #Взято с потолка для приблизительных рассчётов
        "box_height" => 0.2, #Взято с потолка для приблизительных рассчётов
        "Fragile" => false,
        "sig" => sig,
    }
    #response = RequestUtils.get_request(@host, path, params)
    #response

    if  response.has_key?("status") and response["status"] == "ok" and
        response.has_key?("result") and response["result"].has_key?("price")

        response["result"]["price"]
    else
      "Cannot get price" #TODO change this
    end
=end
  123
  end

  def get_price(departure_city_code, arrival_city_code, weight, parcel_type,
                height, length, width, ens_price, fragile, delivery_type)
    777
  end

  def create_order(dep_index, dep_street, dep_house, dep_corpus, dep_flat,
                   dep_surname, dep_name, dep_partonym, dep_phone,
                   arr_index, arr_street, arr_house, arr_corpus, arr_flat,
                   arr_surname, arr_name, arr_paronym, arr_phone,
                   note, capture_time, contact_email)
    true
  end

  def get_parcel_status (order_id)
    1
  end

  @@instance = ExpressRuAPI.new

  def self.instance
    return @@instance
  end

  private

  def generate_signature()
    "WERUOPSDFGHJKDFGHJK"
  end

  def get_place(city_name)
    "Москва"
  end

  def get_type(parcel_type)
    2
  end
  private_class_method :new
end
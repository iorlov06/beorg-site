require 'request_utils'

class DellinAPI
  attr_reader :name
  def initialize
    @name = "Деловые линии"
    @host = "api.dellin.ru"
  end

  def get_approx_price(departure_city_code, arrival_city_code, weight, parcel_type)
    path = "/v1/public/calculator.json"

    body = {
        "appKey" => "TEST_KEY", #TODO: get a key
        "derivalPoint" => departure_city_code,
        "derivalDoor" => true,
        "arrivalPoint" => arrival_city_code,
        "arrivalDoor" => true,
        "sizedVolume" => get_approx_volume(parcel_type),
        "sizedWeight" => weight,
    }
    response = RequestUtils.json_post_request(@host, path, body)

    if not response.has_key?("errors") and response.has_key?("price")
      response["price"]
    else
      "Cannot get price" #TODO change this
    end
  end

  def get_price(departure_city_code, arrival_city_code, weight, parcel_type,
                height, length, width, ens_price, fragile, delivery_type)
    path = "/v1/public/calculator.json"

    body = {
        "appKey" => "TEST_KEY", #TODO: get a key
        "derivalPoint" => departure_city_code,
        "derivalDoor" => true,
        "arrivalPoint" => arrival_city_code,
        "arrivalDoor" => true,
        "sizedVolume" => height * length * width,
        "statedValue" => ens_price,
    }
    response = RequestUtils.json_post_request(@host, path, body)

    if not response.has_key?("errors") and response.has_key?("price")
      #TODO adjust by delivery type

      return response["price"]
    else
      return "Cannot get price" #TODO change this
    end
  end

  def create_order(dep_index, dep_street, dep_house, dep_corpus, dep_flat,
                   dep_surname, dep_name, dep_partonym, dep_phone,
                   arr_index, arr_street, arr_house, arr_corpus, arr_flat,
                   arr_surname, arr_name, arr_partonym, arr_phone,
                   note, capture_time, contact_email)
    true
  end


  def get_parcel_status (order_id)
    0
  end

  @@instance = DellinAPI.new

  def self.instance
    return @@instance
  end

  private

  def get_approx_volume(parcel_type)
    0.01 #TODO implement
  end

  private_class_method :new
end
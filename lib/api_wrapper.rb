require 'dellin_api'
require 'express_ru_api'
require 'major_express_api'

module ApiWrapper
  @@partners = {
      dellin:       DellinAPI.instance,
      expressru:    ExpressRuAPI.instance,
      major:        MajorExpressAPI.instance
  }

  def self.get_approx_prices(departure_city_code, arrival_city_code, weight, parcel_type)
    result = {}
    @@partners.values.each do |partner|
      result[partner.name] = partner.get_approx_price(departure_city, arrival_city,
                                                      weight, parcel_type)
    end
    result
  end

  def self.get_prices(departure_city_code, arrival_city_code, weight, parcel_type,
                      height, length, width, ens_price, fragile, delivery_type)
    result = {}
    @@partners.values.each do |partner|
      result[partner.name] = partner.get_price(departure_city_code, arrival_city_code, weight, parcel_type,
                                              height, length, width, ens_price, fragile, delivery_type)
    end
    result
  end

  #При отсутсвии необязательных параметров, таких как номер кватриры или отчество,
  #вместо них должны быть переданы 0 или пустая строка
  def self.create_order(partner, dep_index, dep_street, dep_house, dep_corpus, dep_flat,
                        dep_surname, dep_name, dep_partonym, dep_phone,
                        arr_index, arr_street, arr_house, arr_corpus, arr_flat,
                        arr_surname, arr_name, arr_paronym, arr_phone,
                        note, capture_time, contact_email)

    @@partners[partner].create_order(dep_index, dep_street, dep_house, dep_corpus, dep_flat,
                                     dep_surname, dep_name, dep_partonym, dep_phone,
                                     arr_index, arr_street, arr_house, arr_corpus, arr_flat,
                                     arr_surname, arr_name, arr_paronym, arr_phone,
                                     note, capture_time, contact_email)
  end

  def self.get_parcel_status(partner, order_id)
    @@partners[partner].get_parcel_status(order_id)
  end
end
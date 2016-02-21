require 'dellin_api'
require 'express_ru_api'

module ApiWrapper
  @@partners = {
      dellin:       DellinAPI.instance,
      expressru:    ExpressRuAPI.instance
  }

  def self.get_approx_prices(departure_city, arrival_city, weight, parcel_type)
    result = {}
    @@partners.values.each do |partner|
      result[partner.name] = partner.get_approx_price(departure_city, arrival_city,
                                                      weight, parcel_type)
    end
    result
  end

end
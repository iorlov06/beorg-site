class Parcel < ActiveRecord::Base
  belongs_to :departure, class_name: "Locality", foreign_key: "departure_id"
  belongs_to :destination, class_name: "Locality", foreign_key: "destination_id"
end

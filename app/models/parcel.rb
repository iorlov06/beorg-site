class Parcel < ActiveRecord::Base
  belongs_to :departure, class_name: "Locality"
  belongs_to :destination, class_name: "Locality"
end

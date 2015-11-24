class Order < ActiveRecord::Base
  belongs_to :partner
  belongs_to :user
  belongs_to :parcel
  belongs_to :departure_point, class_name: "Endpoint"
  belongs_to :destination_point, class_name: "Endpoint"
end

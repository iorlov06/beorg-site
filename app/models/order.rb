class Order < ActiveRecord::Base
  belongs_to :partner
  belongs_to :user
  belongs_to :parcel
  belongs_to :departure_point, class_name: "Endpoint", foreign_key: "departure_point_id"
  belongs_to :destination_point, class_name: "Endpoint", foreign_key: "destination_point_id"
  before_save :check_status

  def check_status
    if !self.status
      self.status = 1
    end
  end
end

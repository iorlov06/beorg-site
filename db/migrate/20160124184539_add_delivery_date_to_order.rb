class AddDeliveryDateToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_date, :timestamp
  end
end

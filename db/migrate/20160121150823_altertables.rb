class Altertables < ActiveRecord::Migration
  def change
    remove_column :parcels, :locality_id, :integer
    add_column :parcels, :departure_id, :integer
    add_column :parcels, :destination_id, :integer
    remove_column :orders, :endpoint_id, :integer
    add_column :orders, :departure_point_id, :integer
    add_column :orders, :destination_point_id, :integer
  end
end

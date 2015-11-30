class ModifyParcel < ActiveRecord::Migration
  def change
    add_column :parcels, :parcel_type, :integer
    add_column :parcels, :delivery_type, :integer
    add_column :parcels, :fragile, :boolean
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :partner, index: true, foreign_key: true
      t.references :parcel, index: true, foreign_key: true
      t.references :endpoint, index: true, foreign_key: "destination_point_id"
      t.references :endpoint, index: true, foreign_key: "departure_point_id"
      t.text :note
      t.string :email
      t.time :capture_time

      t.timestamps null: false
    end
  end
end

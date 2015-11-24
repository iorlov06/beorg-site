class CreateParcels < ActiveRecord::Migration
  def change
    create_table :parcels do |t|
      t.references :locality, index: true, foreign_key: "departure_id"
      t.references :locality, index: true, foreign_key: "destination_id"
      t.float :height
      t.float :width
      t.float :length
      t.float :weight
      t.float :price

      t.timestamps null: false
    end
  end
end

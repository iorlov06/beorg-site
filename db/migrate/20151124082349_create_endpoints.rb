class CreateEndpoints < ActiveRecord::Migration
  def change
    create_table :endpoints do |t|
      t.integer :postal_code
      t.string :street_name
      t.integer :house_number
      t.string :corpus
      t.string :flat
      t.string :person_name
      t.string :person_phone

      t.timestamps null: false
    end
  end
end

class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :logo_url
      t.string :phone_number
      t.string :link
      t.text :description

      t.timestamps null: false
    end
  end
end

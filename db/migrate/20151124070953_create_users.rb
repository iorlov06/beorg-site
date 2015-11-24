class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone
      t.string :firstname
      t.string :lastname
      t.string :partonym
      t.boolean :authorized
      t.boolean :admin

      t.timestamps null: false
    end
  end
end

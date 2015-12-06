class AlterUser < ActiveRecord::Migration
  def change
    remove_column :users, :admin
    add_column :users, :role, :integer, null: false, index: true
  end
end

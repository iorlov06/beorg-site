class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :vat, :string
    add_column :users, :form, :string
    add_column :users, :account_type, :string, default: 'physical'
    add_column :users, :legal_name, :string
  end
end

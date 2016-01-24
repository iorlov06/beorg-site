class AddIndexNumberToEndpoint < ActiveRecord::Migration
  def change
    add_column :endpoints, :index_number, :integer
  end
end

require './connect_db.rb'
connect_db!

ActiveRecord::Migration.create_table(:products) do |t|
  t.column :product_id ,:integer
  t.column :product_name, :string
  t.column :cost, :float  
end

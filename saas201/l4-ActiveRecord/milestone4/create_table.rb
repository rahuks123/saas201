require './connect_db.rb'
connect_db!

ActiveRecord::Migration.create_table(:todos) do |t|
  t.column :due_date ,:Date
  t.column :todo_text, :string
  t.column :completed,:bool
end
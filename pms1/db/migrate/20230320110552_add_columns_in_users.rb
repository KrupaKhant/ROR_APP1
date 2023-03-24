class AddColumnsInUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :phoneno, :integer
    add_column :users, :dob, :date
    add_column :users, :exp, :float
    add_column :users, :tech, :string
  end
end

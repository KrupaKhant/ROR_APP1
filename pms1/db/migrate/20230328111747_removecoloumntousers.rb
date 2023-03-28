class Removecoloumntousers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :fname, :string
    remove_column :users, :lname, :string
    add_column :users, :name, :string
    remove_column :users, :dob, :date

  end
end

class AddUserData < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :handle, :string
  	add_column :users, :location, :string
  	add_column :users, :age, :integer
  end
end

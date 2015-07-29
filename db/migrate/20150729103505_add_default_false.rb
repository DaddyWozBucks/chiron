class AddDefaultFalse < ActiveRecord::Migration
  def change
  	remove_column :exercises, :completed
  	add_column :exercises, :completed, :boolean, default: false
  end
end

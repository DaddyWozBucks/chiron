class ChangePrceisionDistance < ActiveRecord::Migration
  def change
  	remove_column :exercises, :distance
  	add_column :exercises, :distance, :decimal,  :precision => 5, :scale =>2

  end
end

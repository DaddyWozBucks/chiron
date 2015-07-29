class AddCardiotoTemplates < ActiveRecord::Migration
  def change
  	add_column :templates, :distance, :decimal, :precision => 2, :scale =>1
  	add_column :templates, :calories, :integer
  	add_column :templates, :time, :integer
  end
end

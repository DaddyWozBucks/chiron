class AddCardioToExercises < ActiveRecord::Migration
  def change
  	add_column :exercises, :distance, :decimal, :precision => 2, :scale =>1
  	add_column :exercises, :calories, :integer
  	add_column :exercises, :time, :integer
  end
end

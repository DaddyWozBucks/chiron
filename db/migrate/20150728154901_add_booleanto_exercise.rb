class AddBooleantoExercise < ActiveRecord::Migration
  def change
  	add_column :exercises, :completed, :boolean
  end
end

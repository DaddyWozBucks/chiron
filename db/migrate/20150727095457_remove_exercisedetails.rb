class RemoveExercisedetails < ActiveRecord::Migration
  def change
  	remove_column :exercises, :name
  	remove_column :exercises, :instructions
  	remove_column :exercises, :musclecat
  end
end

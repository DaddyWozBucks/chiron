class RemoveWorkoutRef < ActiveRecord::Migration
  def change
  	remove_column :workouts, :workoutref
  end
end

class AddNameToWorkout < ActiveRecord::Migration
  def change
  	add_column :workouts, :title, :string
  end
end

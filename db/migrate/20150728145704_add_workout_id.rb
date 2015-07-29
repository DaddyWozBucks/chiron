class AddWorkoutId < ActiveRecord::Migration
  def change
  	add_column :workouts, :workouts_template_id, :integer
  end
end

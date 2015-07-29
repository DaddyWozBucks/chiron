class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
    	t.integer :user_id
    	t.string :workoutref
      t.timestamps null: false
    end
  end
end

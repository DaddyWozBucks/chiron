class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
    	t.string :name
    	t.string :instructions
    	t.string :musclecat
    	t.integer :workout_id
    	t.integer :weight
    	t.integer :reps
    	t.integer :sets
      
      t.timestamps null: false

    end
  end
end

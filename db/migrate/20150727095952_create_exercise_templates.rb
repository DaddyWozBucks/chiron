class CreateExerciseTemplates < ActiveRecord::Migration
  def change
    create_table :exercise_templates do |t|
    	t.string "title"
    	t.string "instructions"
    	t.string "musclecat"

      t.timestamps null: false
    end
  end
end

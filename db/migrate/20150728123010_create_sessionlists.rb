class CreateSessionlists < ActiveRecord::Migration
  def change
    create_table :sessionlists do |t|
    	t.integer :workouts_template_id
    	t.integer :exercise_id
      t.timestamps null: false
    end
  end
end

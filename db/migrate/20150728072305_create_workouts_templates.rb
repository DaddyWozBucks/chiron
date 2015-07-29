class CreateWorkoutsTemplates < ActiveRecord::Migration
  def change
    create_table :workouts_templates do |t|
    	t.string :name
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end

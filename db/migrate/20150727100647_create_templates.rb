class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
    	t.string :instructions
    	t.string :name
    	t.string :musclecat

      t.timestamps null: false
    end
  end
end

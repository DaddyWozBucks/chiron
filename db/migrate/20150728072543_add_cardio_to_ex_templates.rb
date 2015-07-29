class AddCardioToExTemplates < ActiveRecord::Migration
  def change
  	add_column :exercise_templates, :distance, :decimal, :precision => 2, :scale =>1
  	add_column :exercise_templates, :calories, :integer
  	add_column :exercise_templates, :time, :integer
  end
end

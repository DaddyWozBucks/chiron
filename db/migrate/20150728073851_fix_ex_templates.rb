class FixExTemplates < ActiveRecord::Migration
  def change
  	drop_table :exercise_templates
  end
end

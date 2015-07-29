class AddTemplatesCatsBackBoolean < ActiveRecord::Migration
  def change
  	add_column :templates, :distance, :boolean
  	add_column :templates, :time, :boolean
  	add_column :templates, :calories, :boolean
  	add_column :templates, :weight, :boolean
  	add_column :templates, :reps, :boolean
  	add_column :templates, :sets, :boolean
  end
end

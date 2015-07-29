class RemoveTemplatecats < ActiveRecord::Migration
  def change
  	remove_column :templates, :distance
  	remove_column :templates, :time
  	remove_column :templates, :calories
  	remove_column :templates, :weight
  	remove_column :templates, :reps
  	remove_column :templates, :sets
  end
end

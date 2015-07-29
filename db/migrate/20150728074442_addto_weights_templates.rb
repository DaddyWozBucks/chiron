class AddtoWeightsTemplates < ActiveRecord::Migration
  def change
  	add_column :templates, :weight, :integer
  	add_column :templates, :reps, :integer
  	add_column :templates, :sets, :integer
  end
end

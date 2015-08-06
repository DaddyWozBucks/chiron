class AddMuscleTargetImg < ActiveRecord::Migration
  def change
  	add_column :users, :img_target_url, :string
  	add_column :workouts_templates, :img_target_url, :string
  	add_column :templates, :img_target_url, :string
  end
end

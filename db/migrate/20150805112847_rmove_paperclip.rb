class RmovePaperclip < ActiveRecord::Migration
  def change
  	remove_attachment :users, :avatar
  	remove_attachment :workouts_templates, :shot
  	remove_attachment :templates, :templateshot
  	add_column :users, :imgurl, :string
  	add_column :workouts_templates, :imgurl, :string
  	add_column :templates, :imgurl, :string
  end
end

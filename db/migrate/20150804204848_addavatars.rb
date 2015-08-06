class Addavatars < ActiveRecord::Migration
  def change
  	add_attachment :users, :avatar
  	add_attachment :workouts_templates, :shot
  	add_attachment :templates, :templateshot
  end
end

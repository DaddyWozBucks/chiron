class AddWorkoutsimg < ActiveRecord::Migration
  def change
  	add_column :workouts, :imgurl, :string
  end
end

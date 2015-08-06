class AddingGendertoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :gender, :string
  	add_column :workouts_templates, :fem_imgurl, :string
  	add_column :templates, :fem_imgurl, :string
  end
end

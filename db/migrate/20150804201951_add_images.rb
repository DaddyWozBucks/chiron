class AddImages < ActiveRecord::Migration
  def change
  	add_column :templates, :logo_content_type, :string
    add_column :templates, :logo_file_size, :integer
    add_column :templates, :logo_updated_at, :datetime
    add_column :workouts_templates, :logo_content_type, :string
    add_column :workouts_templates, :logo_file_size, :integer
    add_column :workouts_templates, :logo_updated_at, :datetime
    add_column :workouts, :logo_content_type, :string
    add_column :workouts, :logo_file_size, :integer
    add_column :workouts, :logo_updated_at, :datetime
   
  end
end

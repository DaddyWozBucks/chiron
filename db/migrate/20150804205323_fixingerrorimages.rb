class Fixingerrorimages < ActiveRecord::Migration
  def change
  	remove_column :templates, :logo_content_type, :string
    remove_column :templates, :logo_file_size, :integer
    remove_column :templates, :logo_updated_at, :datetime
    remove_column :workouts_templates, :logo_content_type, :string
    remove_column :workouts_templates, :logo_file_size, :integer
    remove_column :workouts_templates, :logo_updated_at, :datetime
    remove_column :workouts, :logo_content_type, :string
    remove_column :workouts, :logo_file_size, :integer
    remove_column :workouts, :logo_updated_at, :datetime
  end
end

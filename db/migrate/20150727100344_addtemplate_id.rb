class AddtemplateId < ActiveRecord::Migration
  def change
  	add_column :exercises, :template_id, :integer
  end
end

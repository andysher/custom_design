class AddingImages < ActiveRecord::Migration
  def self.up
  	add_column :stores, :pic_file_name,    :string
  	add_column :stores, :pic_content_type, :string
  	add_column :stores, :pic_file_size,    :integer
  	add_column :stores, :pic_updated_at,   :datetime
  end

  def self.down
  	remove_column :stores, :pic_file_name
  	remove_column :stores, :pic_content_type
  	remove_column :stores, :pic_file_size
  	remove_column :stores, :pic_updated_at
  end
end

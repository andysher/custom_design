class UpdateUserInfo < ActiveRecord::Migration
  def change
  	add_column :users, :phone_number, :string
  	add_column :users, :organization, :string
  end
end

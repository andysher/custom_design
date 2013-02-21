class RemoveStNameFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :St_name
  end

  def down
    add_column :users, :St_name, :string
  end
end

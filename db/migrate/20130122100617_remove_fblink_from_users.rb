class RemoveFblinkFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :Fblink
  end

  def down
    add_column :users, :Fblink, :string
  end
end

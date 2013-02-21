class RemoveTwitterhFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :Twitterh
  end

  def down
    add_column :users, :Twitterh, :string
  end
end

class RemovePinitFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :Pinit
  end

  def down
    add_column :users, :Pinit, :string
  end
end

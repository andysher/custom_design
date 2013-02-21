class RenameownerIdfromPosts < ActiveRecord::Migration
  def up
  	rename_column :posts, :owner_id, :trial_id
  end

  def down
  	rename_column :posts, :trial_id, :owner_id
  end
end

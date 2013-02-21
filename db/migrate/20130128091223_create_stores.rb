class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :user_id
      t.string :twitterh
      t.string :fbid
      t.string :pinit
      t.float :custcount

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :st_name
      t.string :fblink
      t.string :twitterh
      t.string :pinit

      t.timestamps
    end
  end
end

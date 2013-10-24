class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :up_votes, :null => false, :default => 0
      t.integer :down_votes, :null => false, :default => 0
      t.string :password_digest
      t.string :remember_token
      t.timestamps
    end
  end
end

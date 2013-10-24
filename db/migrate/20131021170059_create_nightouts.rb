class CreateNightouts < ActiveRecord::Migration
  def change
    create_table :nightouts do |t|
      t.string :headline
      t.string :description
      t.string :pic_url
      t.integer :up_votes, :null => false, :default => 0
      t.integer :down_votes, :null => false, :default => 0
      t.integer :total_amount
      t.integer :share_count

      t.timestamps
    end
  end
end

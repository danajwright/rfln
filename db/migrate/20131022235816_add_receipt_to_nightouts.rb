class AddReceiptToNightouts < ActiveRecord::Migration
  def self.up
    add_attachment :nightouts, :receipt
  end

  def self.down
    remove_attachment :nightouts, :receipt
  end
end

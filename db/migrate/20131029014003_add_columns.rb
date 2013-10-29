class AddColumns < ActiveRecord::Migration
  def change
    remove_column :nightouts, :pic_url
    remove_column :nightouts, :receipt_file_name
    remove_column :nightouts, :receipt_content_type
    remove_column :table_name, :receipt_file_name
  end
end

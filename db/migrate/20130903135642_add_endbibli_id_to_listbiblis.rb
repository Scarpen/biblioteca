class AddEndbibliIdToListbiblis < ActiveRecord::Migration
  def change
  	add_column :listbiblis, :endbibli_id, :integer
  	add_index :listbiblis, :endbibli_id
  end
end

class ListbibliLivros < ActiveRecord::Migration
  def up
  	  create_table :listbiblislivros do |t|
      t.integer :livro_id
      t.integer :listbibli_id

      t.timestamps
  end
  end

  def down
  end
end

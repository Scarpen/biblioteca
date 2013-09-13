class AutorsLivros < ActiveRecord::Migration
  def up
  	  	  create_table :autorslivros do |t|
      t.integer :livro_id
      t.integer :autor_id
      t.timestamps
  end
  end

  def down
  end
end

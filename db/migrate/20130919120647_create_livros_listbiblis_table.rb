class CreateLivrosListbiblisTable < ActiveRecord::Migration
  def up
  	  	  create_table :listbiblis_livros do |t|
      t.integer :listbibli_id
      t.integer :livro_id
  	  end	
  end

  def down
  end
end

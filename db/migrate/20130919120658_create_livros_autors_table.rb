class CreateLivrosAutorsTable < ActiveRecord::Migration
  def up
  	  	  create_table :autors_livros do |t|
      t.integer :livro_id
      t.integer :autor_id
  end
  end

  def down
  end
end

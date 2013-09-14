class Mudancas < ActiveRecord::Migration
  def up
  	rename_column :livros, :nome, :titulo
  end

  def down
  end
end

class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome
      t.date :data
      t.string :pais
      t.string :editora

      t.timestamps
    end
  end
end

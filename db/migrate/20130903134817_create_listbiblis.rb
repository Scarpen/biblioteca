class CreateListbiblis < ActiveRecord::Migration
  def change
    create_table :listbiblis do |t|
      t.string :nome
      t.integer :telefone

      t.timestamps
    end
  end
end

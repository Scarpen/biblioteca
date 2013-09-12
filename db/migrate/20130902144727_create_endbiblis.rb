class CreateEndbiblis < ActiveRecord::Migration
  def change
    create_table :endbiblis do |t|
    	t.string :rua
    	t.string :bairro
    	t.integer :numero
      t.timestamps
    end
  end
end

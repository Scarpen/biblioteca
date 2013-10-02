class CreateUsuariosSessions < ActiveRecord::Migration
  def change
    create_table :usuarios_sessions do |t|

      t.timestamps
    end
  end
end

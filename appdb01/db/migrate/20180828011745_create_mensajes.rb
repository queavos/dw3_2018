class CreateMensajes < ActiveRecord::Migration[5.2]
  def change
    create_table :mensajes do |t|
      t.string :nombre
      t.text :mensaje

      t.timestamps
    end
  end
end

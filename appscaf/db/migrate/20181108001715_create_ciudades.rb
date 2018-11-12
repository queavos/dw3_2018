class CreateCiudades < ActiveRecord::Migration[5.2]
  def change
    create_table :ciudades do |t|
      t.string :nombre
      t.references :estado, foreign_key: true

      t.timestamps
    end
  end
end

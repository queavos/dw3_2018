class CreatePaises < ActiveRecord::Migration[5.2]
  def change
    create_table :paises do |t|
      t.string :pais_nombre
      t.string :pais_code

      t.timestamps
    end
  end
end

class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :nombre
      t.references :paise, foreign_key: true

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombres
      t.string :apellidos
      t.date :fenac
      t.string :email
      t.string :username
      t.string :password
      t.string :rol
      t.boolean :recibemails

      t.timestamps
    end
  end
end

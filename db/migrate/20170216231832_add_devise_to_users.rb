class AddDeviseToUsers < ActiveRecord::Migration[5.0]
  def self.up
    create_table :users do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :nombre
      t.string :apellido
      t.string :documento
      t.string :tipo_documento
      t.string :telefono
    end

    add_index :users, :email,                unique: true
  end

  def self.down
    drop_table :users
  end
end

class CreateVehicleInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_instances do |t|
      t.string :placa
      t.string :clase
      t.string :subtipo
      t.integer :edad
      t.integer :pasajeros
      t.integer :cilindraje
      t.integer :toneladas
      t.integer :user_id, index: true
      t.timestamps
    end
  end
end

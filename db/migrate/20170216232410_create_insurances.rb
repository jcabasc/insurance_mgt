class CreateInsurances < ActiveRecord::Migration[5.0]
  def change
    create_table :insurances do |t|
      t.boolean :active, default: false
      t.belongs_to :vehicle_instance, index: true
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.timestamps
    end
  end
end

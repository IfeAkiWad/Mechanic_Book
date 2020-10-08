class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :owner_name
      t.string :vin_number
      t.string :make
      t.string :model
      t.integer :year
      t.string :vehicle_type
      t.integer :mileage
      t.string :symptom
      t.string :notes
      t.integer :mechanic_id

      t.timestamps
    end
  end
end

class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :type
      t.string :symptom

      t.timestamps
    end
  end
end

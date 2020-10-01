class CreateRepairs < ActiveRecord::Migration[6.0]
  def change
    create_table :repairs do |t|
      t.string :repair
      t.string :part
      t.integer :price
      t.string :completed

      t.timestamps
    end
  end
end

class CreateCommercialUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :commercial_units do |t|
      t.integer :shops
      t.integer :parking

      t.timestamps
    end
  end
end

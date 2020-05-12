class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.integer :sqmt
      t.decimal :price

      t.timestamps
    end
  end
end

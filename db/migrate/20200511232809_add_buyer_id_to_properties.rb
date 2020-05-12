class AddBuyerIdToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :buyer_id, :integer
  end
end

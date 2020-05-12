class AddPropertyableToProperties < ActiveRecord::Migration[6.0]
  def change
    add_reference :properties, :propertyable, polymorphic: true, null: false
  end
end

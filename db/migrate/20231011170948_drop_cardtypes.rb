class DropCardtypes < ActiveRecord::Migration[7.0]
  def change
    drop_table :card_types
  end
end

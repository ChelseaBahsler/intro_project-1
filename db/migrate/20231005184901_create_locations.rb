class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.references :cardset, null: false, foreign_key: true

      t.timestamps
    end
  end
end

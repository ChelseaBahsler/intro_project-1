class CreateCardTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :card_types do |t|
      t.references :Card, null: false, foreign_key: true
      t.references :Type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

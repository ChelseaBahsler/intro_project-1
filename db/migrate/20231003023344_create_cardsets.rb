class CreateCardsets < ActiveRecord::Migration[7.0]
  def change
    create_table :cardsets do |t|
      t.string :name
      t.string :series
      t.date :releasedate

      t.timestamps
    end
  end
end

class Removeforeignkey < ActiveRecord::Migration[7.0]
  def change
    remove_reference :cards, :supertypes, index: true, foreign_key: true
    remove_reference :cards, :cardsets, index: true, foreign_key: true
  end
end

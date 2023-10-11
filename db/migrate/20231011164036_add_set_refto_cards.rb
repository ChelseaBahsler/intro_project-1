class AddSetReftoCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :cardset, index:true
    add_foreign_key :cards, :cardsets
  end
end

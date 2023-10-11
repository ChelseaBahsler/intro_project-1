class AddsupertypeReftoCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :supertype, index:true
    add_foreign_key :cards, :supertypes
  end
end

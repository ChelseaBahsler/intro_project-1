class Card < ApplicationRecord
  belongs_to :supertype
  belongs_to :cardset
end

# Pokemon.configure do |config|
#   config.api_key = "xxxxxxxxx"
# end

CardSubTypes.destroy_all
CardTypes.destroy_all
Supertype.destroy_all
Type.destroy_all
Subtype.destroy_all
Cardset.destroy_all
Location.destroy_all
Card.destroy_all

supertypes = Pokemon::Supertype.all
supertypes.each do |s|
  Supertype.create(name: s)
end

types = Pokemon::Type.all
types.each do |t|
  Type.create(name: t)
end

subtypes = Pokemon::Subtype.all
subtypes.each do |st|
  Subtype.create(name: st)
end

cardsets = Pokemon::Set.all
cardsets.each do |c|
  set = Cardset.create(name: c.name, series: c.series, releasedate: c.releaseDate)

  # rand(1..10).times do
  #   set.locations.create(latitude: Faker::Address.latitude, longitude: Faker::Address.longitude)
  # end
end

pokemons = Pokemon::Card.where(page: 8, pageSize: 250)

pokemons.each do |pokemon|
  new_card = Card.new(name: pokemon.name, hp: pokemon.hp, artist: pokemon.artist, text: pokemon.flavor_text, imageurl: pokemon.images.small)
  new_card.supertype = Supertype.where(:name => pokemon.supertype).first
  new_card.cardset = Cardset.where(:name => pokemon.set.name).first
  new_card.save

  new_subs = pokemon.subtypes
  new_subs.each do |n|
    CardSubtypes.create(card: new_card, subtype: Subtype.where(:name => n).first)
  end

  new_types = pokemon.types
  new_types.each do |n|
    CardTypes.create(card: new_card, type: Type.where(:name => n).first)
  end

end
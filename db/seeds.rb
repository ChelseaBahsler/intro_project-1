Pokemon.configure do |config|
  config.api_key = "d74bd627-0eec-4cd1-9a0a-c5624711560a"
end

CardSubtype.destroy_all
CardType.destroy_all
Type.destroy_all
Subtype.destroy_all
# Location.destroy_all
Card.destroy_all
Supertype.destroy_all
Cardset.destroy_all

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
  set = Cardset.create(name: c.name, series: c.series, releasedate: c.release_date)

  # rand(1..10).times do
  #   set.locations.create(latitude: Faker::Address.latitude, longitude: Faker::Address.longitude)
  # end
end

# Need to adjust this so it doesn't pull all the cards.
# pokemons = Pokemon::Card.where(page: 1, pageSize: 250)
pokemons = Pokemon::Card.all

pokemons.each do |pokemon|
  new_card = Card.new(name: pokemon.name, hp: pokemon.hp, artist: pokemon.artist, text: pokemon.flavor_text, imageurl: pokemon.images.small)
  new_card.supertype = Supertype.where(:name => pokemon.supertype).first
  new_card.cardset = Cardset.where(:name => pokemon.set.name).first
  new_card.save

  new_subs = pokemon.subtypes
  unless new_subs.blank?
    new_subs.each do |ns|
      CardSubtype.create(card: new_card, subtype: Subtype.where(:name => ns).first)
    end
  end

  new_types = pokemon.types
  unless new_types.blank?
    new_types.each do |nt|
      CardType.create(card: new_card, type: Type.where(:name => nt).first)
    end
  end
end
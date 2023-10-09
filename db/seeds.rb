# Pokemon.configure do |config|
#   config.api_key = "xxxxxxxxx"
# end

Supertype.destroy_all
Type.destroy_all
Subtype.destroy_all
Cardset.destroy_all
Location.destroy_all

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



# pokemons = Pokemon::Card.where(page: 8, pageSize: 250)
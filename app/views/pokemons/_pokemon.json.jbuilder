json.extract! pokemon, :id, :nompoke, :typepoke, :puissancepoke, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)

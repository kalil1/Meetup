json.extract! game, :id, :address, :longitude, :latitude, :time, :teams, :players, :sp_rules, :created_at, :updated_at
json.url game_url(game, format: :json)

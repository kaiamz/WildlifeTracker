json.array!(@sightings) do |sighting|
  json.extract! sighting, :id, :date, :latitude, :longitude
  json.url sighting_url(sighting, format: :json)
end

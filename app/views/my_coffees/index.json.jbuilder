json.array!(@my_coffees) do |my_coffee|
  json.extract! my_coffee, :id, :name, :roast, :ground, :origin, :notes
  json.url my_coffee_url(my_coffee, format: :json)
end

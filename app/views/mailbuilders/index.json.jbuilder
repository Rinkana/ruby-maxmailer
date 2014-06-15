json.array!(@mailbuilders) do |mailbuilder|
  json.extract! mailbuilder, :id
  json.url mailbuilder_url(mailbuilder, format: :json)
end

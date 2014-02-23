json.array!(@products) do |product|
  json.extract! product, :id, :item, :price, :unit, :shipping, :photo, :comment
  json.url product_url(product, format: :json)
end

json.array!(@products) do |product|
  json.extract! product, :name, :amount
  json.url product_url(product, format: :json)
end

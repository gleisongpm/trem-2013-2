json.array!(@estacaos) do |estacao|
  json.extract! estacao, :id, :nome
  json.url estacao_url(estacao, format: :json)
end

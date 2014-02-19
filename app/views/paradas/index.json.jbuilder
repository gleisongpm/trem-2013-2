json.array!(@paradas) do |parada|
  json.extract! parada, :id, :ordem, :linha_id, :estacao_id
  json.url parada_url(parada, format: :json)
end

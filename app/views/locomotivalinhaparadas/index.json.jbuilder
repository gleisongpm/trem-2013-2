json.array!(@locomotivalinhaparadas) do |locomotivalinhaparada|
  json.extract! locomotivalinhaparada, :id, :horachegada, :horapartida, :tremlinha_id, :parada_id
  json.url locomotivalinhaparada_url(locomotivalinhaparada, format: :json)
end

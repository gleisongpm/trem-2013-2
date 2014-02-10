json.array!(@linhas) do |linha|
  json.extract! linha, :id, :nome
  json.url linha_url(linha, format: :json)
end

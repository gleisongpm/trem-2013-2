json.array!(@tremlinhas) do |tremlinha|
  json.extract! tremlinha, :id, :destino, :locomotiva_id, :linha_id
  json.url tremlinha_url(tremlinha, format: :json)
end

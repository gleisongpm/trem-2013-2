json.array!(@locomotivas) do |locomotiva|
  json.extract! locomotiva, :id, :nome, :modelo
  json.url locomotiva_url(locomotiva, format: :json)
end

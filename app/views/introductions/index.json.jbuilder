json.array!(@introductions) do |introduction|
  json.extract! introduction, :id, :title, :description, :image_url
  json.url introduction_url(introduction, format: :json)
end

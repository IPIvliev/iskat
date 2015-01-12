json.array!(@articles) do |article|
  json.extract! article, :id, :name, :text, :user_id, :image
  json.url article_url(article, format: :json)
end

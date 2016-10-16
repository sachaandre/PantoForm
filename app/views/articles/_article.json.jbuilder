json.extract! article, :id, :fr_name, :en_name, :zh_name, :date, :content, :tags, :created_at, :updated_at
json.url article_url(article, format: :json)
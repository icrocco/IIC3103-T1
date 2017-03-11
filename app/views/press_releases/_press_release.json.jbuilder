json.extract! press_release, :id, :headline, :subheadline, :body, :created_at, :updated_at
json.url press_release_url(press_release, format: :json)

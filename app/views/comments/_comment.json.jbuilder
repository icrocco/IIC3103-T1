json.extract! comment, :id, :author, :content, :press_release_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)

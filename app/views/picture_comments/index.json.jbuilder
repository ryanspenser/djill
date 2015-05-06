json.array!(@picture_comments) do |picture_comment|
  json.extract! picture_comment, :id, :comment
  json.url picture_comment_url(picture_comment, format: :json)
end

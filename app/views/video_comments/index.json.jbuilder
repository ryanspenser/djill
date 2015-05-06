json.array!(@video_comments) do |video_comment|
  json.extract! video_comment, :id, :comment
  json.url video_comment_url(video_comment, format: :json)
end

json.extract! @story, :id, :name, :text
json.comments do
  json.array! @story.comments do |comment|
    json.extract! comment, :id, :content, :name
    json.commented_at comment.created_at.strftime("%A, %b %d")
  end
end

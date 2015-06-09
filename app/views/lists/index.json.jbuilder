json.tasks @lists do |task|
  json.id task.id
  json.body task.body
  json.cat task.category
  json.created_at task.created_at
end
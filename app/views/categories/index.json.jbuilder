json.categories @categories do |cat|
  json.body cat.title
  json.lists cat.lists
end
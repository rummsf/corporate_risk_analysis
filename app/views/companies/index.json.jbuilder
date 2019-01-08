json.array! @directors do |director|
  json.id director.id
  json.name director.pg_search_highlight.html_safe
  json.name director.name
end

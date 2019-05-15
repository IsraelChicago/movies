json.array! 
@movie.each do |movie|
  json.partial! "movies.json.jbuilder", 
  movie: movie 
end
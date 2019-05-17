json.array! @actor.each do |actor|
  json.partial! "actors.json.jbuilder", 
  actor: actor 
end
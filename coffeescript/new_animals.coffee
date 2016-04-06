animals = "baboons badgers antelopes cobras crocodiles"

collective = (animal) ->
  switch animal
    when "baboons" then "rumpus"
    when "badgers" then "cete"
    when "antelopes" then "herd"
    when "cobras" then "quiver"
    when "crocodiles" then "bask"

animalSentence = (animal) ->
  "A #{collective(animal)} of #{animal}"

lines = (animalSentence(animal) for animal in animals.split(" "))
console.log lines

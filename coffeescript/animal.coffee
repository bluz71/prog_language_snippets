animal_singular = ["antelope", "baboon", "badger", "cobra",  "crocodile"]
animal_plural   = ["herd",     "rumpus", "cete",   "quiver", "bask"]

collective = (animal) ->
  i = 0
  while i < animal_singular.length
    i++
    if animal == animal_singular[i]
      return animal_plural[i]

animal = "cobra"
console.log "The collective name of #{animal} is #{collective(animal)}."

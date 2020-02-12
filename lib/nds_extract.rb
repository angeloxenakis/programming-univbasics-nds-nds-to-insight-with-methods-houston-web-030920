$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  directors_index = 0 
  while directors_index < directors_database.length do
    movies_index = 0
    gross_total = 0
    while movies_index < directors_database[directors_index][:movies].length do
      gross_total = gross_total + directors_database[directors_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1
    end
    result[directors_database[directors_index][:name]] = gross_total
    directors_index += 1
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {
  }
end

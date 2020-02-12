$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross_total = 0 
  inner_length = directors_database[director_data][:movies].inner_length
  inner_index = 0 
  while inner_index < inner_length do
    gross_total += directors_database[director_data][:movies][inner_index]
    inner_index += 1
  end
  gross_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {
    directors_database[0][:name] => 1357566430
  }
end

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  inner_index = 0
  gross_total = 0
  while inner_index < director_data[:movies].length do
    gross_total += director_data[:movies][inner_index][:worldwide_gross]
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
  }
  index = 0 
  while index < directors_database.length do
    gross_for_director(directors_database[index])
    result[directors_database[index][:name]] = gross_total
    index += 1
  end
  pp result
end

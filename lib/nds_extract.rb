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

def gross_for_director(nds, row_index, column_index)
  gross_total = 0
  inner_len = nds[row_index][column_index].length
  inner_index = 0
  while inner_index < inner_len do
    coordinate_total += nds[row_index][column_index][inner_index][:price]
    inner_index += 1
  end
  coordinate_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {
  }
  director_index = 0 
  while director_index < directors_database.length do
    gross_for_director()
    
end

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
end

describe 'gross_for_director method' do
  it "correctly totals the worldwide earnings for a director" do
    first_director_name = directors_database.first.values.first
    first_director_hash = directors_database.find{ |x| x[:name] == first_director_name }

    expect(gross_for_director(first_director_hash)).to eq(1357566430)
  end
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {
  }
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
  pp result
end

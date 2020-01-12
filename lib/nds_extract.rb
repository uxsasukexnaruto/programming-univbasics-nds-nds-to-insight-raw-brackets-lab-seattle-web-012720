$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  total={}
  
  index_count = 0
  while nds[index_count] do
    director = nds[index_count]
    
    name = director[:name]
    movie_gross= 0
    row_count = 0
    while director[:movies][row_count] do
      movie_gross += director[:movies][row_count][:worldwide_gross]
      row_count += 1
    end
    
    total[name] = movie_gross
    index_count += 1
  end
  total
end

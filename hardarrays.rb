# puts array.inject{|sum, array| sum + array} #this is another way to do it, longer though

array_1 = [1, 2, 3]
array_2 = [3, 2]
array_3 = [2, 4]

puts array_1.inject(:+) #finding a sum


puts (array_2 - array_1) == [] #seeing if an array is in another array
puts (array_3 - array_1) ==[]




board = [
  ['X', 'O', 'O'],
  ['X', 'X', 'O'],
  ['O', 'X', 'O']
]

# iterate through board
# iterate through rows
# compare move to "X", if equal increase x counter
# compare move to "O", if equal increase o counter


board.each do |row|
  x_counter = 0
  o_counter = 0
  row.each do |move|
    if move == "X"
      x_counter += 1
    elsif move == "O"
      o_counter += 1
    end
  end
  p "Number of X's: #{x_counter}"
  p "Number of O's: #{o_counter}"
end


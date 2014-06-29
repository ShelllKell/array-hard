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

# iterate through board
# iterate through rows
# if its 0 keep moving
# if it's x, put coordinates into array
# put all 4 arrays into one big array

coordinates = [
               ['x1 y1'],['x1 y2'],['x1 y3'],
               ['x2 y1'],['x2 y2'],['x2 y3'],
               ['x3 y1'],['x3 y2'],['x3 y3']
            ]


new_board = board.flatten
new_coordinates = coordinates.flatten
answer = new_board.zip(new_coordinates)

answer.each do |x|
  if x[0] == "X"
    help = p x[1..2]
  end


win = [['x1 y1'],['x1 y2'],['x1 y3']]
[['x2 y1'],['x2 y2'],['x2 y3']]
[['x3 y1'],['x3 y2'],['x3 y3']]
[['x1 y1'],['x2 y1'],['x3 y1']]
[['x1 y2'],['x2 y2'],['x3 y2']]
[['x1 y3'],['x2 y3'],['x3 y3']]
[['x1 y1'],['x2 y2'],['x3 y3']]
[['x3 y1'],['x2 y2'],['x1 y3']]


variable = help.include?(win)
  if variable == true
    puts "X won"
  else
    puts "O won"
  end

end
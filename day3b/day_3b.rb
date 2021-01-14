input = File.readlines('puzzle_input.txt').map { |line| line.chomp }

def multiplication_of_trees_encountered_in_each_slope(input)
  slopes = [[1,1],[3,1],[5,1],[7,1],[1,2]]

  array_of_encountered_trees_in_each_slope = []

  slopes.map { |right, down|

    j, i = right, down
    encountered_trees = 0

    while i < input.length do
      encountered_trees += 1 if input[i][j] == "#"
      j = (j + right) % input[i].length
      i += down 
    end

    array_of_encountered_trees_in_each_slope << encountered_trees
  }

  puts array_of_encountered_trees_in_each_slope.inject(:*)
end

multiplication_of_trees_encountered_in_each_slope(input)



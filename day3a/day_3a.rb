input = File.readlines('puzzle_input.txt').map { |line| line.chomp }

def total_number_of_trees_encountered(input)
  i = 0
  total = 0
  input.filter do |row|
    found_tree = row[i % row.size] == '#'
    i += 3

    if found_tree
      total += 1
    end
  end
  puts total
end

total_number_of_trees_encountered(input)


input = File.readlines('puzzle_input.txt').each { |line| line.chomp }

data = input.map(&:to_i)

def multiply_two_numbers(data)
  target = 2020
  data.each_with_index do |data1, x|
    data.each_with_index do |data2, y|
      if x != y && (data1 + data2) == target
        puts data1 * data2
      end
    end
  end
end

multiply_two_numbers(data)
input = File.readlines('puzzle_input.txt').each { |line| line.chomp }

data = input.map(&:to_i)

def multiply_three_numbers(data)
  target = 2020
  data.each_with_index do |data1, x|
    data.each_with_index do |data2, y|
      if x != y 
        data.each_with_index do |data3, z|
          if x != z && y != z && (data1 + data2 + data3) == target
            puts data1 * data2 * data3
          end
        end
      end
    end
  end
end

multiply_three_numbers(data)
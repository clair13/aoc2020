input = File.readlines('puzzle_input.txt').each { |line| line.chomp }

Policy = Struct.new(:letter, :lowest, :highest)

def parse_input(input)
  unparsed_policy, password = input.split(': ')
  range, letter = unparsed_policy.split(' ')
  lowest, highest = range.split('-').map(&:to_i)

  policy = Policy.new(letter, lowest, highest)

  [password, policy]
end

def validate(input)
  password, policy = parse_input(input)
  
  first_position = password[policy.lowest - 1]
  second_position = password[policy.highest - 1]
  #at least one part of the condition must be true to be valid
  (first_position == policy.letter) ^ (second_position == policy.letter)
end


def number_of_validated_passwords(input)
  result = input.filter(&method(:validate)).size
  puts result
end

number_of_validated_passwords(input)

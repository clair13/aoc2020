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

  password_size = password.chars.filter { |c| c == policy.letter }.size

  password_size >= policy.lowest && policy.highest >= password_size
end


def number_of_validated_passwords(input)
  result = input.filter(&method(:validate)).size
  puts result
end

number_of_validated_passwords(input)

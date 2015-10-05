birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  first_comma = line.index(',')
  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end

puts 'Please enter a name?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts 'Entry does not exist'
else
  puts date[0..5]
end

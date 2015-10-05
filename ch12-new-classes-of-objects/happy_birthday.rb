# your code here
puts "What year were you born in?"
year = gets.chomp
puts "... and what month were you born in?"
month = gets.chomp
puts "How about the day of the month that you were birthed?"
days = gets.chomp

def happy_birthday (year,month,days)
  birthday = Time.gm(year,month,days)
  today = Time.new
  age = today - birthday
end

age = (happy_birthday(year,month,days) / ( 365 * 3600 * 24)).to_i

puts "My rainman powers calculate that you are #{happy_birthday(year,month,days)} seconds old. That would be (#{age}) years old"
puts "where I come from, it is customary to give you one spank per year of your life."


age.times do
  puts "SPANK"
end

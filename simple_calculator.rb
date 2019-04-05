print ">> Please enter an integer: "
first_number = gets.to_f

print ">> Please enter a second integer: "
second_number = gets.to_f

puts ">> Please enter an operation you would like to perform"
puts ">> Enter a) to add, s) to subtract, m) to multiply or d) to divide:"
operation = gets.chomp.downcase

if operation == "a"
  puts "The result is #{first_number + second_number}"
elsif operation == "s"
  puts "The result is #{first_number - second_number}"
elsif operation == "m"
  puts "The result is #{first_number * second_number}"
elsif operation == "d"
  puts "The result is #{first_number / second_number}"
else
  puts ">> Operation unknown"
end

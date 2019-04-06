def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when 'a'
    'Adding'
  when 's'
    'Subtracting'
  when 'm'
    'Multiplying'
  when 'd'
    'Dividing'
  end
end

prompt("Welcome to Calculator!")

name = ''
loop do
  prompt("Please enter your name:")
  name = gets.chomp.capitalize

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}")

loop do
  number1 = ''
  loop do
    prompt("What is the first number?")
    number1 = gets.chomp.to_i

    if valid_number?(number1)
      break
    else
      prompt("There seems to be an invalid input. Please try again.")
    end
  end

  number2 = ''
  loop do
    prompt("What is the second number?")
    number2 = gets.chomp.to_i

    if valid_number?(number2)
      break
    else
      prompt("There seems to be an invalid input. Please try again.")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    a) for addition
    s) for subtraction
    m) for multiplication
    d) for division
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(a s m d).include?(operator)
      break
    else
      prompt("Please choose a valid operation a, s, m, or d")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers is...")


  result = case operator
          when 'a'
            number1 + number2
          when 's'
            number1 - number2
          when 'm'
            number1 * number2
          when 'd'
            number1.to_f / number2
  end

  prompt("The result is #{result}")

  prompt("Do you want to perfor another calculation? (Y to calculate again)")
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt("Thank you for using my calculator #{name}!")

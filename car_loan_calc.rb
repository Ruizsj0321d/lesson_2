def prompt(message)
  puts ">> #{message}"
end

loop do
  prompt('Welcome to the Car Loan Calculator')
  prompt('What is your loan amount?')

  loan_amount = 0
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt('You must enter a positive number.')
    else
      break
    end
  end

  prompt('What is your interest rate?')
  prompt('For 5% please input 5, for 2.5% please input 2.5')

  interest_rate = 0
  loop do
    interest_rate = gets.chomp

    if interest_rate.empty? || interest_rate.to_f < 0
      prompt('You must enter a positive number.')
    else
      break
    end
  end

  prompt('What is the loan duration in years?')

  years = 0
  loop do
    years = gets.chomp

    if years.empty? || years.to_i < 0
      prompt('Enter a valid number')
    else
      break
    end
  end


  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt('Would you like to do another calculation?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

  prompt('Thank you for using the Car Loan Calculator.')
  prompt('Have a nice day!')

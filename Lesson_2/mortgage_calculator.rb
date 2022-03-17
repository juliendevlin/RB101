def prompt(text)
  puts ">> #{text}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_i < 0
end

prompt('Welcome to Mortgage Calculator!')

loop do
  # ask for loan amount, APR, loan duration
  loan_amount = nil
  loop do
    prompt('Please enter your loan amount.')
    prompt('Input must be a positive integer.')
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt('Invalid input.')
    end
  end

  apr = nil
  loop do
    prompt('Please enter your Annual Percentage Rate.')
    prompt('Input must be a positive integer.')
    apr = gets.chomp
    if valid_number?(apr)
      break
    else
      prompt('Invalid input.')
    end
  end

  annual_loan_duration = nil
  loop do
    prompt('What is the duration of your loan in years?')
    prompt('Input must be a positive integer.')
    annual_loan_duration = gets.chomp
    if valid_number?(annual_loan_duration)
      break
    else
      prompt('Invalid input.')
    end
  end

  # calculate monthly interest, loan duration in months, monthly payment
  monthly_apr = (apr.to_f / 100) / 12
  monthly_loan_duration = annual_loan_duration.to_i * 12
  monthly_payment = loan_amount.to_i *
                    (monthly_apr /
                    (1 - (1 + monthly_apr)**(-monthly_loan_duration)))
  total_payment = monthly_payment * monthly_loan_duration
  total_interest = total_payment - loan_amount.to_i

  # output results of calculations
  prompt("With a monthly interest rate of #{(monthly_apr * 100).round(2)}%...")
  prompt("Your monthly payment will be $#{monthly_payment.round(2)}...")
  prompt("Over a total of #{monthly_loan_duration} payments...")
  prompt("The total payment is $#{total_payment.round(2)}...")
  prompt("and the total interest is $#{total_interest.round(2)}.")

  # repeat loop?
  prompt('Would you like to make another mortgage calculation?')
  PROMPT('Enter Y to go again.')
  another_round = gets.chomp.downcase
  break unless another_round == 'y'
end

prompt('Thanks for using Mortgage Calculator! Buh-bye.')

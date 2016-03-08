module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    sum_all_digits = 0

    nums_a.reverse.each.with_index { |number, index|
      if index % 2 == 0
      	sum_all_digits += number 
      else
        two_digit_number = (number * 2)
        sum_all_digits += (two_digit_number / 10 + two_digit_number % 10)
      end
    }
    sum_all_digits % 10 == 0 ? true : false
  end
end

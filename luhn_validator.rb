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
        two_digit_number = (number * 2) % 100
        sum_all_digits += (two_digit_number / 10 + two_digit_number % 10)
      end
    }
    sum_all_digits % 10 == 0 ? true : false
  end


=begin
  def validate_checksum2
  	# TODO: use the integers in nums_a to validate its last check digit
    nums_a = number.to_s.chars.map(&:to_i)
    last = nums_a[-1]
    nums_a = nums_a[0...-1].reverse
    sum_non_check = 0


    for index in 0...nums_a.length do
      number = nums_a[index]
      index % 2 == 0 ? number *= 2 : number
      two_digit_number = number % 100  # check if doubling operation results in a number > 9            
       #calc_sum_digits = two_digit_number / 10 + two_digit_number % 10  # sum unit digits
      sum_non_check += (two_digit_number / 10 + two_digit_number % 10)
    end
    sum_non_check *= 9
    sum_non_check % 10 == last ? true : false

    #last_unit_digit = (sum_non_check % 10)
    	#check_digit = last_unit_digit == 0 ? 0 : (10 - last_unit_digit)
        #check_digit_validity = nums_a[-1] == check_digit ? true : false
    	#puts "CHECK DIGIT: #{luhn_last_unit_digit}-#{check_digit_validity}" 
  end
=end
end

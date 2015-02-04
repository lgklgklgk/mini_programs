require "pry"

# class PhoneNumberFormatter
#
# Takes a phone number from the user and formats it to appear as phone numbers usually
# do.
#
# Attributes: Nil
# Public Methods:
# convert_number_to_array
# format_number_array
# present_finished_number
# is_number_valid

class PhoneNumberFormatter
  attr_reader :number_array, :areacode, :nextthree, :lastfour
  attr_accessor :number
  def initialize
  
  end

# Public: convert_number_to_array
# Converts the phone number into an array containing the string of each digit.
#
# Parameters:
# phone_number - Integer
# Returns      : Nil
# State Changes: Sets new array equal to instance variable @number_array

  def convert_number_to_array(phone_number)
    @number_array = phone_number.to_s.chars.map(&:to_i)
  end
  
# Public: format_number_array
# Splits the number array into 3 sections (area code, first three digits, last three
# digits) and then converts them all into single integers.
# 
# Parameters   : Nil
# Returns      : Nil
# State Changes: Nil 
  
  def format_number_array
    @areacode = @number_array[0..2].join.to_i
    @nextthree = @number_array[3..5].join.to_i                                    
    @lastfour = @number_array[6..9].join.to_i
  end
  
# Public: present_finished_number
# Adds minor formatting to make it look like a phone number!
#
# Parameters    : Nil
# Returns       : Nil
# State Changes : Nil
  
  def present_finished_number
    puts "(#{@areacode})#{@nextthree}-#{@lastfour}"
  end
  
# Public: is_number_valid
# Gets number from user and ensures that it is 10 digits.
#
# Parameters   : Nil
# Returns      : Either true or false depending on the number.
# State Changes: Establishes boolean value for is_number_valid.

  def is_number_valid
    puts "Please give me a 10 digit number to format into a phone number."
    @number = gets.chomp.to_i
    if (Math.log10(@number).to_i) + 1 == 10
     return true
    else
      return false
    end
  end
    
end

# class Driver
# Initializes the PhoneNumberFormatter
# Attributes    : Nil
# Public Methods:
# #launcher

class Driver
  attr_reader :number  
  def initialize 
  end
  
# Public: launcher
# Launches the PhoneNumberFormatter.
#   
# Parameters   : Nil
# Returns      : Nil
# State Changes: Nil
  
  def launcher
      num = PhoneNumberFormatter.new
      
      until num.is_number_valid == true
        puts "Sorry that isn't a valid number."
      end
      num.convert_number_to_array(num.number)
      num.format_number_array
      num.present_finished_number
    end
end

a = Driver.new
a.launcher


#binding.pry
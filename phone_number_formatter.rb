require "pry"

class PhoneNumberFormatter
  attr_reader :number_array, :areacode, :nextthree, :lastfour
  attr_accessor :number
  def initialize
  
  end

  def convert_number_to_array(phone_number)
    @number_array = phone_number.to_s.chars.map(&:to_i)
  end
  def format_number_array
    @areacode = @number_array[0..2].join.to_i
    @nextthree = @number_array[3..5].join.to_i                                    
    @lastfour = @number_array[6..9].join.to_i

  end
  def present_finished_number
    puts "(#{@areacode})#{@nextthree}-#{@lastfour}"
  end
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

require "pry"

class Driver
  attr_reader :number  
  def initialize 
  end
  
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
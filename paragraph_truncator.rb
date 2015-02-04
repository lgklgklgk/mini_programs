require "pry"

# class ParagraphTruncator
# Accepts a string of words and truncates it down to the first n number of words 
# established by the user.  
#
# Attributes: Nil
# Public Methods:
# self.place_end_of_truncation
# self.truncate  

class ParagraphTruncator
  attr_accessor :truncation_ender

# Public: self.place_end_of_truncation
# Calls the string used to signify the truncation.
#
# Parameters   : Nil
# Returns      : @truncation_ender
# State Changes: Establishes the instance variable #truncation_ender 
  
  def self.place_end_of_truncation
    @truncation_ender = "..."
    return @truncation_ender
  end  
  
# Public: self.truncate
# Based on number of words to be shown and the string to truncate, truncates the 
# string.
#
# Parameters:
# number_of_words_shown - Integer: Number of words that will be displayed.
# string_to_truncate    - String : String that will be truncated.
# 
# Returns      : Nil
# State Changes: Truncates the string.
  
  def self.truncate(number_of_words_shown, string_to_truncate)
    array_of_words = string_to_truncate.split
    truncated_array = array_of_words.first(number_of_words_shown) 
    puts "#{truncated_array.join(" ")}#{ParagraphTruncator.place_end_of_truncation}"
  end

end

# class Driver
# Prompts user for truncation information then feeds it into the truncator.
#
# Attributes    : Nil
# Public Methods:
# self.prompt_for_truncation
# self.prompt_for_string
# self.launcher

class Driver
  attr_reader :text, :truncation

# Public: self.prompt_for_truncation  
# Prompts user for number of words to display and ensures it is greater than one.
# 
# Parameters   : Nil 
# Returns      : @truncation which is equal to the number of words to be truncated.
# State Changes: sets @truncation  
  
  def self.prompt_for_truncation
    print "How many words would you like to display? "
    @truncation = gets.chomp.to_i
    if @truncation > 0
      return @truncation
    else
      Driver.prompt_for_truncation
    end
  end
  
# Public: self.prompt_for_string
# Prompts user for a string to truncate and ensure it is greater than the number of 
# words to be displayed.
#
# Parameters   : Nil
# Returns      : @text, instance variable equal to the string entered.
# State Changes: sets @text  
  
  def self.prompt_for_string
    print "Please input the text that needs truncating. "
    @text = gets.chomp
    if @text.split.size > @truncation
      return @text
    else
      Driver.prompt_for_string
    end
  end
  
# Public: self.launcher
# Launches ParagraphTruncator
#
# Parameters   : Nil
# Returns      : Nil
# State Changes: Nil 
  
  def self.launcher
    Driver.prompt_for_truncation
    Driver.prompt_for_string
    ParagraphTruncator.truncate(@truncation, @text)
  end
    
end
Driver.launcher

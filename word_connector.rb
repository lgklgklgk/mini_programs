require "pry"


# Class: WordConnector
#
# Takes a string containing any number of words and joins them together using commas 
# and a contraction.
#
# Attributes: Nil
#
# Public Methods
# self.word_connector
class WordConnector
  
#Public: #self.word_connector
# Accepts an array and converts it into a string containing the elements of the array
# separated by commas and a contraction.
#
# Parameters:
# array_to_join - Array: an array that is imported from the Driver class.
# 
# Returns: Nil.
# State Changes:
# Converts the argument array_to_join to a string and then separates it with commas
# and the contraction "and".
  
  def self.word_connector(array_to_join)
    if array_to_join.count > 2
      last_word = array_to_join[-1]
      array_to_join.delete_at(-1)
      new_string = array_to_join.join(", ")
      puts "#{new_string}, and #{last_word}"
    else
      two_string = array_to_join.join(" and ")
      puts "#{two_string}"
    end
  
  end
    

  
  
end

# Class: Driver
#
# Takes user input and then runs it through the class WordConnector.
#
# Attributes: Nil
#
# Public Methods
# self.prompt
# self.launcher

class Driver
  
  attr_reader :words

# Public: self.prompt
# Prompts user for some words to join.

# Parameters   : Nil
# Returns      : The variable words_array which is set equal to user input.
# State Changes: Converts user input from a string to an array.

  def self.prompt
    print "Please input the words you wish to join. "
    words = gets.chomp
    words_array = words.split(" ")
    return words_array
  end
  
# Public: self.launcher
# Launches WordConnector.
#
# Parameters: prompt - Method: automatically calls the prompt method.
#
# Returns      : Nil
# State Changes: Nil
  
  def self.launcher
    WordConnector.word_connector(prompt)
  end

end

Driver.launcher
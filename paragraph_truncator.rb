require "pry"
class ParagraphTruncator
  
  def self.place_end_of_truncation
    truncation_ender = "..."
    return truncation_ender
  end  
  
  def self.truncate(number_of_words_shown, string_to_truncate)
    array_of_words = string_to_truncate.split
    truncated_array = array_of_words.first(number_of_words_shown) 
    puts "#{truncated_array.join(" ")}#{ParagraphTruncator.place_end_of_truncation}"
    
  
    
  end
end

class Driver
  attr_reader :text, :truncation
  def self.prompt_for_truncation
    print "How many words would you like to display? "
    @truncation = gets.chomp.to_i
    if @truncation > 0
      return @truncation
    else
      Driver.prompt_for_truncation
    end
  end
  
  def self.prompt_for_string
    print "Please input the text that needs truncating. "
    @text = gets.chomp
    if @text.split.size > @truncation
      return @text
    else
      Driver.prompt_for_string
    end
  end
  def self.launcher
    Driver.prompt_for_truncation
    Driver.prompt_for_string
    ParagraphTruncator.truncate(@truncation, @text)
  end
    
end
Driver.launcher

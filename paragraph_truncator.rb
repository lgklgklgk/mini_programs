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

binding.pry
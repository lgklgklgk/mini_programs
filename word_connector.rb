require "pry"
class WordConnector
  
  def self.word_connector(array_to_join)
    last_word = array_to_join[-1]
    array_to_join.delete_at(-1)
    new_string = array_to_join.join(", ")
    puts "#{new_string} and #{last_word}"
  end
    
  
  
end
binding.pry
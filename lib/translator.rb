require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  puts emoticons
  puts "================================================================"
  result = emoticons.reduce({:get_meaning => {}, :get_emoticon => {}}) do |memo, (key, value)|
    
    p key 
    p value 
    memo 
  end
  result
end

def get_japanese_emoticon(western_emoticon)
  
end

def get_english_meaning
  # code goes here
end
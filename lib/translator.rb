require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  puts emoticons
  puts "================================================================"
  result = emoticons.reduce({:get_meaning => {}, :get_emoticon => {}}) do |memo, (key, value)|
    w_emoticon = value[0]
    j_emoticon = value[1]
    memo[:get_meaning][j_emoticon] = key
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
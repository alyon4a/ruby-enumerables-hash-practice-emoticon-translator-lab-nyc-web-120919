require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  puts emoticons
  puts "================================================================"
  result = emoticons.reduce({:get_meaning => [], :get_emoticon => []}) { |pair| puts pair }
  result
end

def get_japanese_emoticon(western_emoticon)
  
end

def get_english_meaning
  # code goes here
end
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  puts emoticons
  result = emoticons.reduce({:get_meaning = [], :get_emoticon = []}) { |pair| puts pair }
  
end

def get_japanese_emoticon(western_emoticon)
  
end

def get_english_meaning
  # code goes here
end
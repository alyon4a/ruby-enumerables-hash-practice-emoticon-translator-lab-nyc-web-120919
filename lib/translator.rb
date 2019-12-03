require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  puts emoticons
  emoticons.reduce
end

def get_japanese_emoticon(western_emoticon)
  
end

def get_english_meaning
  # code goes here
end
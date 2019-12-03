require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)

  result = emoticons.reduce({:get_meaning => {}, :get_emoticon => {}}) do |memo, (key, value)|
    w_emoticon = value[0]
    j_emoticon = value[1]
    memo[:get_meaning][j_emoticon] = key
    memo[:get_emoticon][w_emoticon] = j_emoticon
    memo 
  end
  result
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  
  j_emoticon = library[:get_emoticon][emoticon]
  
  result = j_emoticon == nil ? "Sorry, that emoticon was not found" : j_emoticon
  result
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  
  meaning = library[:get_meaning][emoticon]
  
  result = meaning == nil ? "Sorry, that emoticon was not found" : meaning
  result
end
require 'yaml'
require 'pry'

def load_library(file)
  new_hash = {}
  loaded_file = YAML.load_file(file)
  loaded_file.each do |name, symbols|
    new_hash[name]  = {}
    new_hash[name][:japanese] = symbols[1]
    new_hash[name][:english] = symbols[0]
  end
  new_hash
end



def get_japanese_emoticon(loaded_file, emoticon)
  emoticons = load_library(loaded_file)
  emoticons.each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end


def get_english_meaning(loaded_file, emoticon)
  emoticons = load_library(loaded_file)
  emoticons.each do |key, value|
    if value[:japanese] == emoticon
      return hash_name[:english]
    end
  end
    return "Sorry, that emoticon was not found"
end
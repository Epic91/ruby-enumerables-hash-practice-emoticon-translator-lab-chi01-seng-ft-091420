# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {}

  emoticons.each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value [0]
    new_hash[key][:japanese] = value[1]

  end
new_hash
end

def get_japanese_emoticon


  # code goes here
end

def get_english_meaning(file_path, emoticons)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticons
    binding.pry
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
  # code goes here
end

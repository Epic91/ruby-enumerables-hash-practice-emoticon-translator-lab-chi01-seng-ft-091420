# require modules here
require "yaml"
#require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {}

  emoticons.each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value [0]
    new_hash[key][:japanese] = value[1]
    #binding.pry

  end
new_hash
end

def get_japanese_emoticon(file_path, emo)
  emoticons = YAML.load_file(file_path)

  # code goes here
end

def get_english_meaning
  # code goes here
end

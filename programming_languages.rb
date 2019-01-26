require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, value_hash|
      new_hash[language] ||= value_hash
      new_hash[language][:style] ||= []
  end
end
languages.each do |style, language_hash|
  language_hash.each do |language, value_hash|
    new_hash[language][:style] << style
end
end
  new_hash
end

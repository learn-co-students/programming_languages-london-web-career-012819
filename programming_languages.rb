require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type,langs|
    langs.each do |lang,hash|
      if !new_hash[lang]
        new_hash[lang] = {}
      end
      hash.each do |t, val|
        new_hash[lang][:type] ||= val
        new_hash[lang][:style] ||= []
        new_hash[lang][:style] << type
      end
    end
  end
  new_hash
end

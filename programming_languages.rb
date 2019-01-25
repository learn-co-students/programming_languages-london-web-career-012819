require 'pry'

def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |oo_or_func, lang_info|
    lang_info.each do |lang_name, type|
      hash[lang_name] = type
      if lang_name ==
      hash[lang_name][:style] = [oo_or_func]
    end
  end
    hash[:javascript][:style] << :oo
  end
  hash
end

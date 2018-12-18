def reformat_languages(languages)
  final_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, lang_prop|
      if final_hash[language]
        final_hash[language][:style] << style
      else
        final_hash[language] = lang_prop
        final_hash[language][:style] = [style]
      end
    end
  end
  final_hash
end

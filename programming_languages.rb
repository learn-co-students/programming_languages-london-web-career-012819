require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, values|

    values.each do |language, data|

      if !(new_hash[language])
        new_hash[language] = {}
      end
      new_hash[language][:type] = data[:type]

      if new_hash[language][:style] == nil
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style] << style
      end

      #language_type = data[:type]
    end
  end

  new_hash

end

require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = Hash.new
  languages.each { |style, languages|
    languages.each { |language, data|
      new_hash[language] = data if !new_hash[language]
      if !new_hash[language][:style]
        new_hash[language][:style] = [style]
      elsif !!new_hash[language][:style]
        new_hash[language][:style] << style
      else
        puts "Something went wrong"
      end
    }
  }
  new_hash
end

puts reformat_languages(languages)

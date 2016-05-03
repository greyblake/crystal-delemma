require "csv"

require "./delemma/*"

module Delemma
  # Taken from Morphy project: http://www.danielnaber.de/morphologie/index_en.html
  MAPPING_FILE = File.expand_path("../delemma/data/morphy-mapping-20110717.csv", __FILE__)

  @@mapping = {} of String => String

  def self.lemmatize(word : String) : String|Nil
    downcased = downcase(word)
    capitalized = capitalize(word)

    mapping[word]? || mapping[capitalized]? || mapping[downcased]? || word
  end

  private def self.mapping
    @@mapping.any? ? @@mapping : load_mapping
  end

  private def self.load_mapping
    io = File.open(MAPPING_FILE)
    CSV.each_row(io).each do |row|
      @@mapping[row[0]] = row[1]
      @@mapping[row[1]] = row[1]
    end
    @@mapping
  end

  private def self.downcase(str)
    str.downcase.
      gsub("Ü", "ü").
      gsub("Ä", "ä").
      gsub("Ö", "ö")
  end

  private def self.capitalize(str)
    downcase(str).capitalize.
      gsub(/^ü/, "Ü").
      gsub(/^ä/, "Ä").
      gsub(/^ö/, "Ö")
  end
end

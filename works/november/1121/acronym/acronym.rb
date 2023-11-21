class Acronym
  def self.abbreviate(multi_word)
    acronym = ""
    multi_word.split(" ").each do |word|
      if word.include?("-")
        word.split("-").each do |word|
          acronym += word[0].upcase
        end
      else
        acronym += word[0].upcase
      end
    end
  acronym
  end
end
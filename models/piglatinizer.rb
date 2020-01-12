class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def convert
    "Converted Text"
    text_array = text.split(//)
    if text.match?(/^[aeiou]/)
      text + "way"
    elsif text.match?(/^[^aeiou]{2}/)

    end


  end
end

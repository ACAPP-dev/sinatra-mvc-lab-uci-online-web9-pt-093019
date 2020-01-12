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
    elsif text.match?(/^[^aeiou]{3}/)
      text_array[3..-1].join() + text_array[0..2].join + "ay"
    end


  end
end

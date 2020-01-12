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
      text_array[2..-1].join() + text_array[0..1].join + "ay"
    end


  end
end

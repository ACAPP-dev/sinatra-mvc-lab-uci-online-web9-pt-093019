class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def convert
    sentence_array = text.split(/ /)
    final_result = []
    sentence_array.each do |word|
      text_array = word.split(//)
      if word.match?(/^[aeiou]/)
        word + "way"
      elsif text.match?(/^[^aeiou]{3}/)
        p text_array[3..-1].join() + text_array[0..2].join + "ay"
      elsif text.match?(/^[^aeiou]{2}/)
        p text_array[2..-1].join() + text_array[0..1].join + "ay"
      elsif text.match?(/^[^aeiou]{1}/)
        p  text_array[1..-1].join() + text_array[0] + "ay"
      end
    end
  end
end

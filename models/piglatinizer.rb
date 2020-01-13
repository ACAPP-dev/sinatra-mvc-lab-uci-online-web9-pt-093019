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
        pig_word = word + "way"
      elsif word.match?(/^[^aeiou]{3}/)
        pig_word = text_array[3..-1].join() + text_array[0..2].join + "ay"
      elsif word.match?(/^[^aeiou]{2}/)
        pig_word = text_array[2..-1].join() + text_array[0..1].join + "ay"
      elsif word.match?(/^[^aeiou]{1}/)
        pig_word = text_array[1..-1].join() + text_array[0] + "ay"
      end
      final_result << pig_word
    end
  end
end

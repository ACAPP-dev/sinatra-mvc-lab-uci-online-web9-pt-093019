class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def convert
    "Converted Text"
    if text.scan(/[^aeiou]/)
  end
end

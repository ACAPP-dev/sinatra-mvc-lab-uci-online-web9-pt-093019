class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def convert
    "Converted Text"
    if text.scan(/\A[^aeiou])
  end
end

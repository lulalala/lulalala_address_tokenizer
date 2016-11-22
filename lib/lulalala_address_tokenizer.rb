require "lulalala_address_tokenizer/version"
require "wapiti"

class LulalalaAddressTokenizer
  # @params model_path [#read]
  def initialize(model_path)
    @model = Wapiti.load(model_path)
  end

  # @params address [String]
  def parse(address)
    address = address.tr(" \t",'')

    segments = []
    address.chars.each do |ch|
      segments << "#{ch} n"
    end

    result = @model.label [segments]
    join(result.first)
  end

  private

  def join(segments)
    result = {}

    current_phase = ''
    previous_mark = nil
    segments.each do |s|
      mark = s.last
      ss = s.first.split(' ')
      word = ss.first

      if previous_mark == mark
        current_phase << word
      else
        result[previous_mark] = current_phase
        previous_mark = mark
        current_phase = word
      end
    end
    result[previous_mark] = current_phase

    result.shift
    result
  end
end

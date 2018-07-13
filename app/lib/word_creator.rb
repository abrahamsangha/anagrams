module WordCreator
  module_function

  def execute(words:)
    Array(words).each do |word|
      Word.create(value: word, standardized: standardize(word: word))
    end
  end

  def standardize(word:)
    word.downcase.split('').sort.join
  end
end

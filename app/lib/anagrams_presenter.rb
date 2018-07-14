module AnagramsPresenter
  module_function

  def execute(target_word:, anagrams:)
    anagrams.map(&:value)
  end
end

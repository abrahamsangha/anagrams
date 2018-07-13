require 'test_helper'

class WordCreatorTest < ActiveSupport::TestCase
  test "execute takes an array of words and creates Words" do
    WordCreator.execute(words: ['helicopter', 'Panda'])
    words = Word.all.map(&:value)
    assert_equal(['helicopter', 'Panda'], words)
  end

  test "execute takes a single word and creates a Word" do
    WordCreator.execute(words: 'Panda')
    words = Word.all.map(&:value)
    assert_equal(['Panda'], words)
  end

  test "standardize downcases and sorts the word" do
    assert_equal('abcdef', WordCreator.standardize(word: 'bCaDef'))
  end
end

class RemoveWordsCharSortedIndex < ActiveRecord::Migration[5.2]
  def change
    remove_index :words, name: "index_words_on_char_sorted"
  end
end

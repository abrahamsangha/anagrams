class AddIndexWordsStandardized < ActiveRecord::Migration[5.2]
  def change
    add_index :words, :standardized
  end
end

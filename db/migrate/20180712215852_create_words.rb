class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :value
      t.string :standardized

      t.timestamps
    end

    add_index :words, :char_sorted
    add_index :words, :value, unique: true
  end
end

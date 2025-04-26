class CreateComics < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.text :description, null: true
      t.references :genre, null: false, foreign_key: true
      t.string :tags, array: true, default: []

      t.timestamps
    end
  end
end

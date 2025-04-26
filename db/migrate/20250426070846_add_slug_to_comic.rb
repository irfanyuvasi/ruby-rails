class AddSlugToComic < ActiveRecord::Migration[8.0]
  def change
    add_column :comics, :slug, :string
    add_index :comics, :slug, unique: true
  end
end

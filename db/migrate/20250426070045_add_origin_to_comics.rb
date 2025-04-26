class AddOriginToComics < ActiveRecord::Migration[8.0]
  def change
    add_column :comics, :origin, :string
    add_check_constraint :comics, "origin IN ('JAPAN', 'KOREA', 'CHINA', 'USA')", name: 'origin_enum_constraint'
  end
end

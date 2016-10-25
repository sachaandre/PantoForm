class AddThemeNumberToThemes < ActiveRecord::Migration[5.0]
  def change
    add_column :themes, :theme_number, :integer
  end
end

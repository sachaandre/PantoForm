class DropThemeArticle < ActiveRecord::Migration[5.0]
  def change
    drop_table :articles_themes
  end
end

class ArticlesAndThemes < ActiveRecord::Migration[5.0]
  def change
      create_table :articles_themes, id: false do |t|
        t.belongs_to :article, index: true
        t.belongs_to :theme, index: true
    end
  end
end

class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :fr_name
      t.string :en_name
      t.string :zh_name
      t.string :date
      t.text :content
      t.string :tags

      t.timestamps
    end
  end
end

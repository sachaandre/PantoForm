class AddCommentToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :comment, :text
  end
end

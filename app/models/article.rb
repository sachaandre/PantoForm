class Article < ApplicationRecord

  belongs_to :author

  has_many :article_themes
  has_many :themes, through: :article_themes

  accept_nested_attributes_for :theme

  def gather_theme
    self.theme_ids = [theme_one_id, theme_two_id, theme_three_id]
  end

  def theme_id
    theme_ids.first
  end

  def set_author!(author)
    self.author_id = author_id

    self.save!
  end
end

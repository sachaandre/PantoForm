class Article < ApplicationRecord

  belongs_to :author

  has_many :articles_themes
  has_many :themes, through: :articles_themes

  def set_author!(author)
    self.author_id = author_id

    self.save!
  end
end

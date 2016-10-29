class Article < ApplicationRecord

  belongs_to :author

  has_many :article_themes
  has_many :themes, through: :article_themes

  def set_author!(author)
    self.author_id = author_id

    self.save!
  end

end

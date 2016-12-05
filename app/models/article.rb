class Article < ApplicationRecord

  belongs_to :author

  has_many :article_themes
  has_many :themes, through: :article_themes

  validates :fr_name, :en_name, :zh_name, presence: {message: 'N\'oublie pas de mettre un nom d\'article!'}

  def set_author!(author)
    self.author_id = author_id

    self.save!
  end

end

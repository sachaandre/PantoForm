class Theme < ApplicationRecord
  has_many :article_themes
  has_many :articles, through: :article_themes

  def full_theme
    id.to_s + '. ' + name
  end

end

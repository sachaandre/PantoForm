class Theme < ApplicationRecord
  has_many :articles_themes
  has_many :articles, through: :articles_themes

  def full_theme
    id.to_s + '. ' + name
  end

end

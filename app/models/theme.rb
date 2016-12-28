class Theme < ApplicationRecord
  has_many :article_themes
  has_many :articles, through: :article_themes

  def full_theme
    id.to_s + '. ' + name
  end
  
  def random_color
    rdm = rand(5)
    case rdm
    when 0
      clr="border-top-red"
    when 1
      clr="border-top-orange"
    when 2
      clr="border-top-green"
    when 3
      clr="border-top-purple"
    when 4
      clr="border-top-blue"
    else
      clr="border-top-grey"
    end
  end

end

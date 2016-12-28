class Article < ApplicationRecord

  belongs_to :author

  has_many :article_themes
  has_many :themes, through: :article_themes

  validates :fr_name, presence: {message: "Il manque un nom en français !"}
  validates :en_name, presence: {message: "Il manque un nom en anglais !"}
  validates :zh_name, presence: {message: "Il manque un nom en chinois !"}


  def set_author!(author)
    self.author_id = author_id

    self.save!
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

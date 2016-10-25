class Article < ApplicationRecord

  belongs_to :author

  has_and_belongs_to_many :themes

  def set_author!(author)
    self.author_id = author_id

    self.save!
  end
end

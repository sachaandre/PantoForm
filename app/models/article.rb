class Article < ApplicationRecord
  belongs_to :author

  def set_author!(author)
    self.author_id = author_id

    self.save!
  end
end

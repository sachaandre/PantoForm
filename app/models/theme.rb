class Theme < ApplicationRecord
  has_and_belongs_to_many :articles

  def full_theme
    id + '. ' + name
  end

end

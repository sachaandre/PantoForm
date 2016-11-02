class Author < ApplicationRecord

  has_secure_password

  has_many :articles

  # validates :last_name, :presence => true

  def full_name
    first_name + ' ' + last_name
  end

end

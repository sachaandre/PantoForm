class Author < ApplicationRecord

  has_secure_password

  has_many :articles

  ADMIN = "CATTELAIN"

  # validates :last_name, :presence => true

  def full_name
    first_name + ' ' + last_name
  end

  def is_admin?
    last_name == ADMIN
  end

end

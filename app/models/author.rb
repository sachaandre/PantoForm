class Author < ApplicationRecord

  has_secure_password

  has_many :articles

  ADMIN_LAST = "CATTELAIN"
  ADMIN_MAIL = "eric.cattelain@orange.fr"


  # validates :last_name, :presence => true

  def full_name
    first_name + ' ' + last_name
  end

  def is_admin?
    last_name == ADMIN_LAST
    email == ADMIN_MAIL
  end

end

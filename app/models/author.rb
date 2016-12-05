class Author < ApplicationRecord

  has_secure_password

  has_many :articles

  validates :first_name, :last_name, :email, presence: {message:'Tu n\'as pas rempli ce champs, vilain garnement !'}
  validates :email, uniqueness: {message: 'Cet email est déjà pris, dommage.'}
  ADMIN_LAST = "CATTELAIN"
  ADMIN_MAIL = "eric.cattelain@orange.fr"


  def full_name
    first_name + ' ' + last_name
  end

  def is_admin?
    last_name == ADMIN_LAST
    email == ADMIN_MAIL
  end

end

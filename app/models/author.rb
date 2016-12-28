class Author < ApplicationRecord

  has_secure_password

  has_many :articles

  validates :first_name, :last_name, :email, presence: {message:'Tu n\'as pas rempli ce champs, vilain garnement !'}
  validates :email, uniqueness: {message: 'Cet email est déjà pris, dommage.'}
  ADMIN_LAST = "CATTELAIN"
  ADMIN_MAIL = "eric.cattelain@orange.fr"


  validates :last_name, :first_name, :email, presence: {message: "Il faut remplir ces champs, chenapan !"}
  validates :email, uniqueness: {message: "Cette adresse mail est déjà prise, désolé."}

  def full_name
    first_name + ' ' + last_name
  end

  def is_admin?
    last_name == ADMIN_LAST
    email == ADMIN_MAIL
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

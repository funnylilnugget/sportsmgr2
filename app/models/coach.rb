class Coach < ApplicationRecord
  has_secure_password

    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: true, :uniqueness => { :case_sensitive => false }
    validates :password, presence: true, confirmation: true, length: { minimum: 8 }, :on => :create

    has_many :games

end

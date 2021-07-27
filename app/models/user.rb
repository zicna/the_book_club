class User < ApplicationRecord
    has_many :reviews
    has_many :books, through: :reviews

    has_secure_password

    validates :first_name, presence: true, uniqueness: {scope: [:last_name, :birth_date]}
    validates :last_name, presence: true
    validates :birth_date, presence: true
    validates :email, presence :true, uniqueness: true
    validates :password_digest, presence: true
    validates :username, presence: true, uniqueness: true
    validates :birth_date, presence: true


    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end

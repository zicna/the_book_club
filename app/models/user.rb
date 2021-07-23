class User < ApplicationRecord
    has_many :reviews
    has_many :books, through: :reviews

    has_secure_password


    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end

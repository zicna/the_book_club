class User < ApplicationRecord
    has_many :reviews, foreign_key: "user_id", dependent: :destroy
    has_many :books, through: :reviews

    has_secure_password #authenticate, password, validate
    #need to add bcrypt gem
    #this gives us password and password_confirmation to our model
    #these fields do not correspond with database columns, method expect there to be password_digest column

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true

    def full_name
        "#{self.first_name} #{self.last_name}" 
    end

    def format_date
        self.birth_date.strftime("%B %d, %Y")
    end
    
    def member_since
        self.created_at.strftime("%B %d, %Y")
    end

    def self.average_review_mark_by_user
        self.joins(:reviews).group(:id, :first_name, :last_name).average(:mark)
    end

end

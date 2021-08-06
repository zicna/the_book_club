class Author < ApplicationRecord
    has_many :books, foreign_key: "author_id", dependent: :nullify

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :birth_date, presence: true, uniqueness: {
        scope: [:first_name, :last_name]
    }
    
    
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def format_birth_date
        self.birth_date.strftime("%B %d, %Y")
    end
    def format_death_date
        
        self.death_date ? self.death_date.strftime("%B %d, %Y") : nil
    end

end

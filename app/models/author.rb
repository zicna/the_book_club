class Author < ApplicationRecord
    has_many :books, foreign_key: "author_id", dependent: :nullify

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end

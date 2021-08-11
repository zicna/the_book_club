class Category < ApplicationRecord
    has_many :books

    validates :name, presence: true, uniqueness: true

    scope :added_by, -> (user) {where("created_by == ? ", user.id)}
end

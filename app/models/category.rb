class Category < ApplicationRecord
    has_many :books

    validates :name, presence: true, uniqueness: true

    scope :category_added_by_user, -> (user) {where("created_by == ? ", user.id)}
end

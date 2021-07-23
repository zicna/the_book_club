class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :reviews
  has_many :users, through: :reviews

  accepts_nested_attributes_for :author, reject_if: ->(attributes){ attributes['first_name'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :category, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
end

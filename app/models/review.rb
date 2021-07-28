class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :book_id, presence: true
  validates :user_id, presence: true, uniqueness: {
    scope: :book_id}
  validates :content, presence: true
  validates :mark, numericality: {
    only_integer: true,
    :greater_than_or_equal_to => 1,
    :less_than_or_equal_to => 10
}

  def date_of_review
    self.created_at.strftime("%B %d, %Y")
  end
end

class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  def date_of_review
    self.created_at.strftime("%B %d, %Y")
  end
end

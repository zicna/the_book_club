class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :title, presence: true, uniqueness: true
  validates :invt, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: {:greater_than => 0.1}

  accepts_nested_attributes_for :author, reject_if: ->(attributes){ attributes['first_name'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :category, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true

  scope :get_books_by_category, -> (category) {where("category_id == ?", category.id)}
  scope :get_books_by_author, -> (author) {where("author_id == ?", author.id)}

  scope :added_by, -> (user) {where("created_by == ?", user.id)}

def author_attributes=(hash)
  if hash[:first_name].present?
  @author = Author.find_or_create_by(
    first_name: hash[:first_name],
    last_name: hash[:last_name]) do |author|
      author.first_name= hash[:first_name]
      author.last_name= hash[:last_name]
      author.birth_date= hash[:birth_date]
      author.death_date= hash[:death_date]
      author.wiki_page= hash[:wiki_page]
      author.image= hash[:image]
    end

    self.author = @author
  end
end

def category_attributes=(hash)
  if hash[:name].present?
    @category = Category.find_or_create_by(name: hash[:name])
    self.category = @category
  end
end
# search engin for books index page
def self.search(search)
  if search 
    where(["title LIKE ?", "%#{search}%"])
  else 
    all
  end
end

# for admin pages
def self.most_expensive_book
  self.order(price: :desc).first
  # sel.order("price DESC").first
end


def self.most_reviewed_book
  # byebug
  
    self.joins(:reviews).group(:title).order('COUNT(reviews.id) DESC, title').first
  
end

def self.book_with_highest_avg_mark
  # self.joins(:reviews).group(:title).order('AVERAGE(reviews.mark) DESC').first
  # self.joins(:reviews).group(:title).order('average(reviews.mark) DESC')
end
end

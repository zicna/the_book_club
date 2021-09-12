require 'rails_helper'

RSpec.describe Review, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "Review" do
    before(:each) do
      @author = Author.create!(
        first_name: "Fyodor",
        last_name: "Dostojevski",
        image: "https://upload.wikimedia.org/Project.jpg",
        birth_date: "11-11-1821",
        death_date: "9-2-1881",
        wiki_page: "https://en.wikipedia.org/wiki/Fyodor_Dostoevsky")
      @category = Category.create!(
        name: "Novel",
        description: "A novel..."
      )
      @user = User.create!(
        first_name: "first name",
        last_name: 'last name',
        email:'example@user.com',
        password: '1234',
        birth_date: "01-01-2001",
        uid: "1234",
        provider: "google")
      @book = Book.create!(
        author_id: 1,
        category_id: 1,
        title: "The Goblin",
        invt: "fd01",
        description: "Lorem ipsum...",
        price: 10.99)

        @review = Review.create!(
          book_id: 1,
          user_id: 1,
          content: "Lorem ipsum ...",
          mark: 1
        )
    end
    it "Review can be created" do
      expect(@review).to be_valid  
    end
    it "ensure that Review has content" do
      @review.content = nil
      expect(@review.save).to eq(false)
    end
    it "ensure that Review has mark greather than 1 and less than 100" do
      array = [-1, 0, nil, false, 11, 1.1]
      array.each do |mark|
        @review.mark = mark
        expect(@review.save).to eq(false) 
      end
    end
    
    
    
  end
  
end

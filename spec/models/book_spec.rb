require 'rails_helper'

RSpec.describe Book, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "Book" do
    before(:each) do 
      @author = Author.new(
        first_name: "Fyodor",
        last_name: "Dostojevski",
        image: "https://upload.wikimedia.org/Project.jpg", 
        birth_date: "11-11-1821",
        death_date: "9-2-1881",
        wiki_page: "https://en.wikipedia.org/wiki/Fyodor_Dostoevsky"
      ).save,

      @category = Category.create!(
        name: "Novel",
        description: "A novel..."
      )
      @book = Book.create!(
        author_id: 1,
        category_id: 1,
        title: "The Goblin",
        invt: "fd01",
        description: "Lorem ipsum...",
        price: 10.99)
    end
      it "Book can be created" do
        expect(@book).to be_valid          
      end
      context "Book validations tests" do
        it "ensure book has a title" do
          @book.title = nil
          # @book.save!
          expect(!!@book.save).to eq(false)
        end
        it "ensure book has invt key" do
          @book.invt = nil
          expect(@book.save).to eq(false)  
        end
        it "ensure book has a description" do
          @book.description = nil
          # @book.description = ""
          expect(@book.save).to eq(false)
        end
        it "ensure book has a price, price must be a number greather than 0" do
          array = [nil, 0, -1, ""]

          array.each do |element|
            @book.price = element
            expect(@book.save).to eq(false)  
          end
        end
      end
  end
end

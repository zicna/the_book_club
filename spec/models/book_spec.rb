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
        description: "A novel is a relatively long work of narrative fiction, typically written in prose and published as a book. A novel is a long, fictional narrative which describes intimate human experiences. The novel in the modern era usually makes use of a literary prose style. The development of the prose novel at this time was encouraged by innovations in printing, and the introduction of cheap paper in the 15th century."
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
      
    
    
  end
  
end

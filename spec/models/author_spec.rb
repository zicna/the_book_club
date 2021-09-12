require 'rails_helper'

RSpec.describe Author, type: :model do

  
  describe Author do

    
    before(:each) do
        @author = Author.create!(first_name: "Fyodor", last_name: "Dostojevski", image: "https://upload.wikimedia.org/Project.jpg", birth_date: "11-11-1821", death_date: "9-2-1881", wiki_page: "https://en.wikipedia.org/wiki/Fyodor_Dostoevsky")
    end

    
    it "Author can be created" do
      expect(@author).to be_valid  
    end

    it "Author has instance method 'full name'" do
      expect(@author.full_name).to eq("Fyodor Dostojevski")  
    end

    it "Author has 'format_birth_date' instance method" do
      expect(@author.format_birth_date).to eq("November 11, 1821")  
    end

    it "Author has 'format_death_date' instance method " do
      expect(@author.format_death_date).to eq("February 09, 1881")  
    end
  end
  context "Author validation tests" do
    it "ensure first name presence" do
      author = Author.new(last_name: "Dostojevski", image: "https://upload.wikimedia.org/Project.jpg", birth_date: "11-11-1821", death_date: "9-2-1881", wiki_page: "https://en.wikipedia.org/wiki/Fyodor_Dostoevsky").save
      expect(author).to eq(false)  
    end
    it "ensure last name presence" do
      author = Author.new(first_name: "Fyodor", image: "https://upload.wikimedia.org/Project.jpg", birth_date: "11-11-1821", death_date: "9-2-1881", wiki_page: "https://en.wikipedia.org/wiki/Fyodor_Dostoevsky").save
      expect(author).to eq(false)  
    end
    it "ensure birth date presence" do
      author = Author.new(first_name: "Fyodor",last_name: "Dostojevski", image: "https://upload.wikimedia.org/Project.jpg", death_date: "9-2-1881", wiki_page: "https://en.wikipedia.org/wiki/Fyodor_Dostoevsky").save
      expect(author).to eq(false)  
    end
  end
  


  
end

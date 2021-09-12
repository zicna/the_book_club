require 'rails_helper'

RSpec.describe Category, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "Category" do
    before(:each) do
      @category = Category.create!(
        name: "Novel",
        description: "A novel..."
      )
    end
    it "Category can be created" do
      expect(@category).to be_valid  
    end
    it "Category name must be unique" do
      category = Category.new(
        name: "Novel",
        description: "A novel..."
      )
      expect(category).to be_invalid
    end
  end
  
end

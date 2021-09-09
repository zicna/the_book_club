require 'rails_helper'

RSpec.describe User, :type => :model do
    context "validation test" do
        it "ensure first name presence " do
            user = User.new(last_name: 'last name', email:'example@user.com', password: '1234').save
            expect(user).to eq(false)
        end
        it "ensure last name presence" do
            user = User.new(first_name: 'first name', email:'example@user.com', password: '1234').save
            expect(user).to eq(false)  
        end
        it "ensure email presence" do
            user = User.new(first_name: 'first name',last_name: 'last name', password: '1234').save
            expect(user).to eq(false)  
        end
        it "ensure password presence" do
            user = User.new(first_name: 'first name',last_name: 'last name', email:'example@user.com').save
            expect(user).to eq(false)  
            
        end
    end

    
    
    
    
    
end

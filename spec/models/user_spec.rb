require 'rails_helper'

RSpec.describe User, :type => :model do
    describe User do
        before(:each) do
            @user = User.create!(first_name: "first name", last_name: 'last name', email:'example@user.com', password: '1234', birth_date: "01-01-2001", uid: "1234", provider: "google")
        end
        it "User can be created" do
            expect(@user).to be_valid
        end
        it "User has instance method " do
            expect(@user.full_name).to eq("first name last name")
        end
        it "User has instance method" do
            expect(@user.member_since).to eq(@user.created_at.strftime("%B %d, %Y"))  
        end
        it "User has instance method 'format date' " do
            expect(@user.format_date).to eq("January 01, 2001")
        end
        
        
    end
    
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

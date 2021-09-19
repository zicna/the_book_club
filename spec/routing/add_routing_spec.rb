require "rails_helper"

RSpec.describe "Routes", :type => :routing do
    it "route '/' to point to root page, welcome#home" do
        expect(get("/")).to route_to("welcome#home")
        expect(get("/")).to be_routable   
    end
    it "route '/about' to point to page, welcome#about" do
        expect(get("/about")).to route_to('welcome#about') 
        expect(get('/about')).to be_routable 
    end
    it "route '/contact' to route to 'welcome#contact'" do
        expect(get("/contact")).to route_to("welcome#contact") 
        expect(get("/contact")).to be_routable  
    end
    
    
    
end
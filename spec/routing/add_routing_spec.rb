require "rails_helper"

RSpec.describe "Routes", :type => :routing do
    #tests for custom routes
    #welcome controller routes
    it "route '/' to point to root page, welcome#home" do
        expect(get: root_path).to route_to("welcome#home")
        expect(get: root_path).to be_routable   
    end
    it "route '/about' to point to page, welcome#about" do
        expect(get("/about")).to route_to('welcome#about') 
        expect(get('/about')).to be_routable 
    end
    it "route '/contact' to route to 'welcome#contact'" do
        expect(get("/contact")).to route_to("welcome#contact") 
        expect(get("/contact")).to be_routable  
    end
    #users controller routes for signup
    it "route '/signup' to point to root page, users#signup" do
        expect(get('/signup')).to route_to('users#new')
        expect(get('/signup')).to be_routable   
    end
    it "route '/signup' to point to users#signup" do
        expect(post('/signup')).to route_to('users#create') 
        expect(post('/signup')).to be_routable  
    end
    #sessions controller routes
    it "route'/logout' to point to sessions#destroy" do
        expect(post('/logout')).to route_to("sessions#destroy") 
        expect(post("/logout")).to be_routable 
    end
    it "route '/auth/google_oauth2/callback' to point tosessions#omniauth" do
        expect(get("/auth/google_oauth2/callback")).to route_to("sessions#omniauth")
        expect(get("/auth/google_oauth2/callback")).to be_routable
    end 

    #test for nested routes
    #/book/book_id/reviews => point to all reviews for book 1
    it "route to reviews as a nested resources of an book" do
        expect(get: book_reviews_path(1)).to route_to("reviews#index", book_id: "1")
        expect(get: book_reviews_path(1)).to  be_routable
    end
    #book/book_id/reviews/id
    it "route to review as a nested resources of an book" do
        expect(get: book_review_path(1,2)).to route_to("reviews#show", book_id:"1", id: "2") 
        expect(get: book_review_path(1,2)).to be_routable  
    end
    #make sure reviews are nested only under books#show
    # it "only routes from 'books#show' routes to reviews" do
    #     expect(get: books_reviews_url).not_to route_to("reviews#index")
    #     expect(get: books_reviews_url).not_to be_routable  
    # end
    # '/users/user_id/reviews' only nested route from users
    it "routes from ... " do
        base_url = "/users/1/reviews"
        expect(get: base_url).to route_to("reviews#index", user_id:"1")
        expect(get: base_url).to be_routable
        expect(get: base_url + "/1").not_to route_to("reviews#show", user_id: "1", id: "1") 
        expect(get: base_url + "/new").not_to route_to("reviews#new", user_id: "1") 
        expect(get: base_url + "/new").not_to be_routable  
        expect(get: base_url + "/1/edit").not_to route_to("reviews#edit", user_id: "1", id: "1")
        expect(get: base_url + "/1/edit").not_to be_routable  
    end
    
    
    
    

    
    
    
    
    
    
    
    
end
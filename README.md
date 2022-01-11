# <spam style="color:orange">📚 Book Store Project 📚</spam>
___


This application is meant to be a place for users to add authors, books or categories,  and reviews about books. This way users can keep track of all books they read, find some new books for future reads based on other users' reviews, online resources about books or authors. All in all, it's meant to inspire us to enjoy reading books and learning new things about authors. 

!["There is no friend as loyal as a book.", Ernest Hemingway](https://quotefancy.com/media/wallpaper/3840x2160/4056-Ernest-Hemingway-Quote-There-is-no-friend-as-loyal-as-a-book.jpg)
___

## <spam style="color:orange">Table of Content</spam>
- [<spam style="color:orange">📚 Book Store Project 📚</spam>](#spam-stylecolororange-book-store-project-spam)
  - [<spam style="color:orange">Table of Content</spam>](#spam-stylecolororangetable-of-contentspam)
  - [<spam style="color:orange">Description</spam>](#spam-stylecolororangedescriptionspam)
  - [<spam style="color:orange">Specification</spam>](#spam-stylecolororangespecificationspam)
      - [<spam style="color:orange">Versioning](#spam-stylecolororangeversioning)
      - [<spam style="color:orange">Database</spam>](#spam-stylecolororangedatabasespam)
  - [<spam style="color:orange">Instalation</spam>](#spam-stylecolororangeinstalationspam)
  - [<spam style="color:orange">How To Use</spam>](#spam-stylecolororangehow-to-usespam)
  - [<spam style="color:orange">Tests</spam>](#spam-stylecolororangetestsspam)
      - [<spam style="color:orange">Model testing</spam>](#spam-stylecolororangemodel-testingspam)
      - [<spam style="color:orange">Route testing</spam>](#spam-stylecolororangeroute-testingspam)
  - [<spam style="color:orange">Future uppgrades</spam>](#spam-stylecolororangefuture-uppgradesspam)
  - [<spam style="color:orange">Contributing</spam>](#spam-stylecolororangecontributingspam)
  - [<spam style="color:orange">Bugs</spam>](#spam-stylecolororangebugsspam)
  - [<spam style="color:orange">License</spam>](#spam-stylecolororangelicensespam)
- [README](#readme)

___
##  <spam style="color:orange">Description</spam>
___


## <spam style="color:orange">Specification</spam>
#### <spam style="color:orange">Versioning
This application is writen in Ruby programming language version: 
`ruby 2.6.1p33 (2019-01-30 revision 66950) [x86_64-darwin20]`

With Ruby on Rails framework version: 
`Rails 6.1.4`

<spam style="color:yellow">*NOTE: This can be checked by running `ruby -v ` and `rails -v ` in root folder of this application.* </spam>
#### <spam style="color:orange">Database</spam>
Database used for building this application is `SQLite`, version: `SQLite version 3.36.0`. 

<spam style="color:yellow">*NOTE: This can be checked by running `rails db`.* </spam>

![Database schema](public/Book_Club_DB.jpeg)
*<p align="center"> Database schema </p>*

___
## <spam style="color:orange">Instalation</spam>

1. **<spam style="color:green">fork**</spam> this this repository
2. **<spam style="color:green">clone**</spam> this (with SSH key) to your local environment
3. **<spam style="color:green">navigate**</spam> to root directory
4. **<spam style="color:green">run</spam>** `bundle install` to track and install the exact gems and versions that are needed.
5. **<spam style="color:green">run</spam>** `rails db:migrate` to change database schema based of migrations (found id `./db/migrate/...`)
6. **<spam style="color:green">run</spam>** `rails db:seed` to seed database with dummy data so we would have data to work with
7. **<spam style="color:green">run</spam>** `rails server` to start *localhost* on port *3000*
8. **<spam style="color:green">navigate</spam>** browser to `http://localhost:3000/` where our application is being hosted

 ___

##  <spam style="color:orange">How To Use</spam>
___
## <spam style="color:orange">Tests</spam>
All tests are located in the **spec** folder and they are divided into folders based on what are they testing(models, routing,...).

To run all the tests we need to <spam style="color:green">run</spam> `rspec spec` command in our terminal.
#### <spam style="color:orange">Model testing</spam>
All model tests are located at `./spec/models/` folder, devided into different files, one file for one model(`author_spec.rb` test file  for `author.rb` model).

To <spam style="color:green">run</spam> all model tests: `rspec spec/models`.

To <spam style="color:green">run</spam> specific model tests: `rspec spec/models/--file_name--`
#### <spam style="color:orange">Route testing</spam>
All routes tests are located at `./spec/routing/add_routing_spec.rb`.

To <spam style="color:green">run</spam> all routes tests: `rspec spec/routing` or `rspec spec/routing/add_routing_spec.rb` since there is only one file it *routing folder*.

___
## <spam style="color:orange">Future uppgrades</spam>
- [x] Fix readme.md 
- [x] Add tests for routes
- [x] Add tests for models 
- [ ] Add tests for controller
- [ ] More functionality for users profile page
- [ ] Use `active-storage` gem for saving files instad of links to images on web  
___
##  <spam style="color:orange">Contributing</spam>

___
##  <spam style="color:orange">Bugs</spam>
___
##  <spam style="color:orange">License</spam>
This application is avaiable as open source under the terms of the [MIT License](LICENSE).
___











# README

* Ruby version
    # ruby 2.6.1p33 (2019-01-30 revision 66950) [x86_64-darwin20]
    # rails 6.1.4

* Installation guide
    # Please fork repo from here https://github.com/zicna/the_book_club.git
    # Clone it to your local environment
    # Navigate to the folder you clone this repo and run 'bundle install' -to install all dependencies
    # run 'rails db:migrate' -to migrate database
    # optional 'rails db:seed' -to seed your databse with some date premaide for you
    # In your terminal run 'rails s' to start local server on port 3000  
    # In your browser navigate to localhost:3000
    # You are ready to go!!!

* Application Description
    # The idea for 'The Book Club' app is to keep track of books/authors/categories you are interested in
    # You can create new(book, category, author) or write a review on existing books to keep track of books you have read
    # All your stats will be shown on your profile page
    # On the book individual page you will be able to see all reviews made by other users and link to the web page with more info about the book
    # 
    #  Once all installation is done you will find yourself on the home page of our application
    # From here you can check pages such as Home / About / Contact where you can get general info about this app
    # On the same page you are given options to 
    ## login (if you already have an account)
    ## sign in (to create a new user)
    ## login with google (if you are new to this app this will create a new user or it will simply log you in with your Google account)
    # Once you are logged in you can check pages such as Books / Authors / Categories
    ## on each of these pages you can find a list of all books/authors/categories with the option to create new at the end of the page


* Contributiors quide
    # let us know what you thing about our app by sendin mail on zivkovicmilan1987@gmail.com
    # We would love to hear from you

* MIT open source license 
    # https://github.com/zicna/the_book_club/blob/main/LICENSE


* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


authors = [
    {
        first_name: "Fyodor",
        last_name: "Dostojevski",
        image: "https://commons.wikimedia.org/wiki/File:Vasily_Perov_-_%D0%9F%D0%BE%D1%80%D1%82%D1%80%D0%B5%D1%82_%D0%A4.%D0%9C.%D0%94%D0%BE%D1%81%D1%82%D0%BE%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_-_Google_Art_Project.jpg#/media/File:Vasily_Perov_-_Портрет_Ф.М.Достоевского_-_Google_Art_Project.jpg",
        birth_date: "11-11-1821",
        death_date: "9-2-1881",
        wiki_page: "https://en.wikipedia.org/wiki/Fyodor_Dostoevsky"
    },
    {
        first_name: "Anton",
        last_name: "Chekhov",
        image: "https://commons.wikimedia.org/wiki/File:Anton_Chekhov_1889.jpg#/media/File:Anton_Chekhov_1889.jpg",
        birth_date: "29-1-1860",
        death_date: "15-7-1904",
        wiki_page: "https://en.wikipedia.org/wiki/Anton_Chekhov"
    },
    {
        first_name: "Alexander",
        last_name: "Pushkin",
        image: "https://commons.wikimedia.org/wiki/File:Kiprensky_Pushkin.jpg#/media/File:Kiprensky_Pushkin.jpg",
        birth_date: "29-5-1799",
        death_date: "29-1-1837",
        wiki_page: "https://en.wikipedia.org/wiki/Alexander_Pushkin"
    },
    {
        first_name: "Leo" ,
        last_name: "Tolstoy",
        image: "https://commons.wikimedia.org/wiki/File:L.N.Tolstoy_Prokudin-Gorsky.jpg#/media/File:L.N.Tolstoy_Prokudin-Gorsky.jpg",
        birth_date: "9-9-1828",
        death_date: "20-11-1910",
        wiki_page: "https://en.wikipedia.org/wiki/Leo_Tolstoy"
        
    }
]

books = [
    {
        author_id: 1,
        category_id: 1,
        title: "The Goblin",
        invt: "fd01",
        description: "Lorem ipsum...",
        price: 10.99
    },
    {
        author_id: 1,
        category_id: 1,
        title: "Crime and Punishment",
        invt: "fd02",
        description: "Lorem ipsum...",
        price: 14.99

    },
    {
        author_id: 1,
        category_id: 1,
        title: "The Brothers Karamszov",
        invt: "fd03",
        description: "Lorem ipsum...",
        price: 13.99

    },
    {
        author_id: 1,
        category_id: 1,
        title: "The Gambler",
        invt: "fd04",
        description: "Lorem ipsum...",
        price: 9.99

    },
    {
        author_id: 1,
        category_id: 2,
        title: "Note of the fatherland",
        invt: "fd05",
        description: "Lorem ipsum...",
        price: 5.99

    },
    {
        author_id: 1,
        category_id: 2,
        title: "The Contemporary",
        invt: "fd06",
        description: "Lorem ipsum...",
        price: 4.99

    },
    {
        author_id: 2,
        category_id: 1,
        title: "My life",
        invt: "ac01",
        description: "Lorem ipsum...",
        price: 11.99

    },
    {
        author_id: 2,
        category_id: 1,
        title: "The Duel",
        invt: "ac02",
        description: "Lorem ipsum...",
        price: 12.99

    },
    {
        author_id: 2,
        category_id: 2,
        title: "At Dusk",
        invt: "ac03",
        description: "Lorem ipsum...",
        price: 8.99

    },
    {
        author_id: 2,
        category_id: 2,
        title: "Gloomy People",
        invt: "ac04",
        description: "Lorem ipsum...",
        price: 9.99

    },
    {
        author_id: 3,
        category_id: 1,
        title: "The Captain's Daughter",
        invt: "ap01",
        description: "Lorem ipsum...",
        price: 7.99

    },
    {
        author_id: 3,
        category_id: 2,
        title: "The Blizzard",
        invt: "ap02",
        description: "Lorem ipsum...",
        price: 12.99

    },
    {
        author_id: 3,
        category_id: 3,
        title: "Ruslan and Ludmila",
        invt: "ap03",
        description: "Lorem ipsum...",
        price: 5.99

    },
    {
        author_id: 3,
        category_id: 3,
        title: "The Gypsies",
        invt: "ap04",
        description: "Lorem ipsum...",
        price: 4.99

    },
    {
        author_id: 4,
        category_id: 1,
        title: "The Cossacks",
        invt: "lt01",
        description: "Lorem ipsum...",
        price: 14.99

    },
    {
        author_id: 4,
        category_id: 1,
        title: "War and Peace",
        invt: "lt06",
        description: "Lorem ipsum...",
        price: 20.99

    },
    {
        author_id: 4,
        category_id: 1,
        title: "Anna Karenina",
        invt: "lt07",
        description: "Lorem ipsum...",
        price: 12.99

    },
    {
        author_id: 4,
        category_id: 1,
        title: "The Death of Ivan Ilyich",
        invt: "lt02",
        description: "Lorem ipsum...",
        price: 11.99

    },
    {
        author_id: 4,
        category_id: 1,
        title: "The Autobiographical Trilogy",
        invt: "lt03",
        description: "Lorem ipsum...",
        price: 19.99

    },
    {
        author_id: 4,
        category_id: 2,
        title: "Work, Death, and Sickness",
        invt: "lt04",
        description: "Lorem ipsum...",
        price: 11.99

    },
    {
        author_id: 4,
        category_id: 2,
        title: "Sevastopol Sketches",
        invt: "lt05",
        description: "Lorem ipsum...",
        price: 9.99

    }
]

categories = [
    {name: "Novel"},
    {name: "Short story"},
    {name: "Narrative poems"}
]







categories.map do |category|
    Category.find_or_create_by(name: category[:name])
end




# author_id = 0
authors.each do |attributes|
    # author_id += 1
    Author.create(
        first_name: attributes[:first_name],
        last_name: attributes[:last_name],
        image: attributes[:image],
        birth_date: attributes[:birth_date],
        death_date: attributes[:death_date],
        wiki_page: attributes[:wiki_page]
        )
        # p author_id
end

# book_id = 0
books.each do |book|
    # book_id +=1
    Book.create(
        author_id: book[:author_id],
        category_id: book[:category_id],
        title: book[:title],
        invt: book[:invt],
        description: book[:description],
        price: book[:price]
        )
        # p book_id
end
puts "data loaded success"

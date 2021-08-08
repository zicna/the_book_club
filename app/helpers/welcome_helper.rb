module WelcomeHelper
    BOOK_QUOTES = [
        {
            quote:"If you don’t like to read, you haven’t found the right book." ,
            author: "J.K.Rowling",
        },
        {
            quote: "I love the smell of book ink in the morning." ,
            author: "Umberto Eco",
        },
        {
            quote: "The America I love still exists at the front desks of our public libraries.",
            author: "Kurt Vonnequt",
        },
        {
            quote: "Reading brings us unknown friends." ,
            author: "Honore de Balzac",
        },
        {
            quote: "A room without books is like a body without a soul.",
            author: "Marcus Tullius Cicero",
        },
        {
            quote: "There is no friend as loyal as a book" ,
            author: "Ernest Hemingway",
        }
    ]

    def book_quote
        quote = BOOK_QUOTES[rand(1...BOOK_QUOTES.length)]
        content_tag :div do 
            content_tag :p, "'#{quote[:quote]}' by #{quote[:author]}", class:"quote"
        end
    end

    
end

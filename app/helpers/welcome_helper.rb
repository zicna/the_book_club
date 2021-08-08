module WelcomeHelper

    def book_quote
        quote = BOOK_QUOTES[rand(1...BOOK_QUOTES.length)]
        content_tag :div do 
            content_tag :p, "'#{quote[:quote]}' by #{quote[:author]}", class:"quote"
        end
    end

    private 
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
            quote: "‘Classic’ – a book which people praise and don’t read." ,
            author: "Marc Twain",
        },
        {
            quote: "Think before you speak. Read before you think." ,
            author: "Fran Lebowitz",
        },
        {
            quote: "The reading of all good books is like conversation with the finest (people) of the past centuries." ,
            author: "Descartes",
        },
        {
            quote: "There is no friend as loyal as a book" ,
            author: "Ernest Hemingway",
        },
        {
            quote: "A good book is an event in my life." ,
            author: "Stendal",
        },
        {
            quote: "Make it a rule never to give a child a book you would not read yourself." ,
            author: "George Bernard Shaaw",
        },
        {
            quote: "To learn to read is to light a fire; every syllable that is spelled out is a spark." ,
            author: "Victor Hugo",
        },
        {
            quote: "Employ your time in improving yourself by other men’s writings so that you shall come easily by what others have labored hard for." ,
            author: "Socrates",
        }
    ]

    
end

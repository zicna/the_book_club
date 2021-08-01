module ReviewsHelper
    #review is 'join' between users and books
    #comb of one book and one user there can be only onew review
    #this checks it and returns [] or ["something here"]
    def one_review_per_user_per_book(book)
        book.reviews.map{|review| review.user_id == current_user.id }
    end
end

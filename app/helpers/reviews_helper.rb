module ReviewsHelper
    #review is 'join' between users and books
    #comb of one book and one user there can be only onew review
    #this checks it and returns [] or ["something here"]
    def one_review_per_user_per_book(book)
        review_arr = []
        book.reviews.each do |review| 
            if review.user_id == current_user.id 
                review_arr << review
            end
        end
        review_arr
    end
end

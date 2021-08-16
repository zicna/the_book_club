module CategoriesHelper

    def count_books_by_category(category)
        Book.get_books_by_category(category).count
    end
end

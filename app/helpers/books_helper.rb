module BooksHelper
    def edit_book_by_admin(book)
        if is_admin?
            link_to "Edit book", edit_book_path(book), class:"edit-del"
        end
    end
    def delete_book_by_admin(book)
        if is_admin?
                link_to "Delete book", book_path(book), method: :delete, class:"edit-del"
        end
    end
end

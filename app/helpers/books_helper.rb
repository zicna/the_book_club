module BooksHelper
    def edit_book_by_admin(book)
        if is_admin?
            content_tag :div do 
                link_to "Edit book", edit_book_path(book)
            end
        end
    end
    def delete_book_by_admin(book)
        if is_admin?
            content_tag :div do 
                link_to "Delete book", book_path(book), method: :delete
            end
        end
    end
end

module UsersHelper
    #how to get this helper to pu out both link_to in views???
    # def edit_delete_by_admin
    #     if is_admin?
    #         content_tag :div do 
    #             link_to "Delete Book", book_path(@book), method: :delete
    #             link_to "Edit Book", edit_book_path(@book)
    #         end
    #     end
    # end

    def edit_by_admin(book)
        if is_admin?
            content_tag :div do 
                link_to "Edit Book", edit_book_path(book)
            end
        end
    end

    def delete_by_admin(book)
        if is_admin?
            content_tag :div do 
                link_to "Delete Book", book_path(book), method: :delete
            end
        end
    end
end

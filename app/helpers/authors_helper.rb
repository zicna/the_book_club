module AuthorsHelper
    # def edit_author_by_admin(author)
    #     if is_admin?
    #         content_tag :div do 
    #             link_to "Edit #{author.class}", "edit_#{author.class}_path(#{author.id})"
    #         end
    #     end
    # end

    # def delete_author_by_admin(author)
    #     if is_admin?
    #         content_tag :div do 
    #             link_to "Delete author", author_path(author), method: :delete
    #         end
    #     end
    # end

    def edit_author_by_admin(author)
        if is_admin?
            content_tag :div do 
                link_to "Edit author", edit_author_path(author)
            end
        end
    end

    def delete_author_by_admin(author)
        if is_admin?
            content_tag :div do 
                link_to "Delete author", author_path(author), method: :delete
            end
        end
    end
end

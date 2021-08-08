module UsersHelper

    def edit_by_admin(user)
        if is_admin? || current_user == user
                link_to "Edit User", edit_user_path(user), class:"edit-del"
        end
    end

    def delete_by_admin(user)
        if is_admin? || current_user == user
                link_to "Delete User", user_path(user), method: :delete, class:"edit-del"
        end
    end

    def books_added(user)
        Book.added_by(user)
    end

    def avg_review_mark(user)
        Review.avg_review_mark_by_user(user)
    end

    def categories_added(user)
        Category.category_added_by_user(user)
    end

end

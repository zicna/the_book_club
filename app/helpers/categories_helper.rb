module CategoriesHelper
    def edit_category_by_admin(category)
        if is_admin?
                link_to "Edit category", edit_category_path(category)
        end
    end

    def delete_category_by_admin(category)
        if is_admin?
                link_to "Delete category", category_path(category), method: :delete
        end
    end

    def count_books_by_category(category)
        Book.get_books_by_category(category).count
    end
end

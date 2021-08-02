module UsersHelper
    #how to get this helper to pu out both link_to in views???
    # def edit_delete_by_admin
    #     if is_admin?
    #         content_tag :div do 
    #             link_to "Delete user", user_path(@user), method: :delete
    #             link_to "Edit user", edit_user_path(@user)
    #         end
    #     end
    # end

    def edit_by_admin(user)
        if is_admin? || current_user == user
            content_tag :div do 
                link_to "Edit User", edit_user_path(user)
            end
        end
    end

    def delete_by_admin(user)
        if is_admin? || current_user == user
            content_tag :div do 
                link_to "Delete User", user_path(user), method: :delete
            end
        end
    end
end

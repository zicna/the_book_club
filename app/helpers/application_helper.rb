module ApplicationHelper
    def show_errors_if_any(var_name)
        if var_name.errors.any? 
            # byebug
            content_tag(:h2, pluralize(var_name.errors.count, "Errors"))
            # content_tag(:ul) do 
            #     var_name.errors.full_messages.each do |message|
            #         content_tag(:li, message)
            #     end
            # end
        end
    end


    

    def logged_in?
        session[:user_id].present? ? true : false
    end

    def current_user
        if logged_in? && User.find_by(id: session[:user_id])
            User.find_by(id: session[:user_id])
        else
            false
        end
    end

    def is_admin?
        current_user ? current_user.admin : false
    end


end

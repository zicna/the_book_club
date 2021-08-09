module ApplicationHelper
    def display_errors(konj)
        # byebug
        if  konj.errors.any?
           
            render partial: "shared/errors",
                locals: {
                    user: konj
                }
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

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


end

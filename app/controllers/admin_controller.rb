class AdminController < ApplicationController
    before_action :admin_user_count, only: :show
    before_action :user_count, only: :show
    before_action :most_expensive_book, only: :show
    before_action :books_total, only: :show
    before_action :most_reviewed_book, only: :show
    before_action :book_with_highest_avg_mark, only: :show




    def show
        if is_admin?
            @avg_mark = User.average_review_mark_by_user
        else
            flash[:alert] = "Acces denied"
            redirect_to "/"
        end
    end

    private
    def user_count
        @user_count = User.count
    end

    def admin_user_count
        @admin_user_count = User.where("admin == ?", true).count
    end
    def most_expensive_book
        @most_expensive_book = Book.most_expensive_book
    end

    def books_total
        @books = Book.count
    end

    def most_reviewed_book
        @most_reviewed = Book.most_reviewed_book
    end

    def book_with_highest_avg_mark
        @highest_avg_mark_book = Book.book_with_highest_avg_mark
    end



end

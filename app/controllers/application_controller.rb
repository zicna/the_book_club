class ApplicationController < ActionController::Base
include ApplicationHelper
layout :determine_layout

private
def determine_layout
    # byebug
    logged_in? ? "application" : "home"
end
end

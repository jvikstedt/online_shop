class ApplicationController < ActionController::Base
  include CurrentCart
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :cart
  before_filter :find_all_categories

protected
  def find_all_categories
    @categories = Category.all
  end
end

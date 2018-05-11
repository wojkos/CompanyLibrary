class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :borrowed_books

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def borrowed_books
    if current_user
      @borrowed_books = Book.where(borrow_by_id: current_user.id)
    end
  end

end

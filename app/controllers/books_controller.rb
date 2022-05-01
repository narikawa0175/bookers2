class BooksController < ApplicationController
  def new
   @book=Book.new
  end
  
  def create
   @book=Book.new
   @book.user_name=current_user.name
   @book.save
   redirect_to books_path
  end
  
  def index
   @user=current_user
   @books=@user.books
  end

  def show
  end

  def edit
  end
end

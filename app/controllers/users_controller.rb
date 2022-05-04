class UsersController < ApplicationController
  def index
   @user=current_user
   @post=Book.new
   @users=User.all
  end

  def show
   @user=current_user
   @post=Book.new
   @posts=@user.books
  end

  def edit
  end
end

class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to request.referer, notice: "You have created book successfully."
    else
      @user = current_user
      @books = Book.all
      render "index"
      @book = Book.new
    end
  end

  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :option, :profile_image)
  end
end
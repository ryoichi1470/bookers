class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end 
end

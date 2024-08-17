class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      @books = Book.all 
      render :index
    end 
  end
  
  def show
    @book = Book.find(params[:id])
  end


  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    book = book.find(params[:id])
    book.destroy
    redirect_to @book
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end 
end

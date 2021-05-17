class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end
 
  def index
    @books = Book.all
    @book = Book.new
   
  end

  def new
   
  end
  
  def create
    book = Book.new(book_params)
   
    if book.save
      flash[:notice] = "book was successfully created"
      redirect_to book_path(book.id)
 
    end
  end
  
  def edit
     @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
   if  book.update(book_params)
    flash[:notice] = "book was successfully update."
    redirect_to book_path(book.id)
  
  end
end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to books_path
  end
  
  private
  def book_params
   params.require(:book).permit(:title, :body)
  end
  

end

class BooksController < ApplicationController
  before_action :logged_in?, only:[:create, :edit, :update, :destroy]

  def new
    @book = current_user.books.new
  end
  
  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = current_user.books.new(book_params)    
    if @book.save
      flash[:success] = "Create Book Successfully!!!"
      redirect_to @book
    else 
      render 'new'
    end
  end

  def edit
    @books = Book.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :issue_date, :publishing_company,:description,
    :picture,:category_id)
  end
end

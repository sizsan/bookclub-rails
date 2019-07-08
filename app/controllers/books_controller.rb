class BooksController < ApplicationController

  def index
    @books = Book.order_by_author_title
  end

  def show
    @book = Book.find(params[:id])
    @can_add = !BookListItem.contains?(current_user,@book) if user_signed_in?
    @reviews = @book.reviews
    @rating = Review.get_average_rating(@book)
  end

  def add
    book = Book.find(params[:id])
    current_user.books.push(book)
    if current_user.save
      redirect_to book_list_items_path
    else
      flash[:alert] = "There was a problem adding that book"
    end
  end

  def new
    @book = Book.new
  end

  def create
    author = Author.create_author(params[:book][:first_name], params[:book][:last_name])
    book = Book.create_book(params[:book][:title], author, params[:book][:genre])
    BookListItem.create_book_list_item(current_user, book)
    rescue
      flash[:alert] = "Oops! There was a problem adding that book."
    ensure
      redirect_to book_list_items_path
  end

    @book.cover.attach(params[:book][:cover])
end

class BookListItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @books = BookListItem.order_by_updated_at(current_user)
    @books_for_trade = BookListItem.books_for_trade(current_user)
  end

  def destroy
    item_id = BookListItem.book_list_item_id(current_user,params[:id])
    BookListItem.destroy(item_id)
    redirect_to book_list_items_path
  end

  def edit
    @book_list_item = BookListItem.find(BookListItem.book_list_item_id(current_user,params[:id]))
  end

  def update
    @book_list_item = BookListItem.find(params[:id])
    @book_list_item.for_trade = params[:book_list_item][:for_trade]
    if @book_list_item.save
      redirect_to book_list_items_path
    end
  end

end

class FansController < ApplicationController
  def index
    book = Book.find(params[:id])
    @fans = book.users
    @book = book
  end
end

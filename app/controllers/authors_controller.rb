class AuthorsController < ApplicationController
  def index
    @authors = Author.order_by_name
  end
  def show
    @author = Author.find(params[:id])
  end

end

Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  get "/books", to: "books#index", as: "books"
  get "/books/add", to: "books#add", as: "add_book_to_list"
  get "/books/new", to: "books#new", as: "new_book"
  post "/books", to: "books#create"
  get "/books/:id", to: "books#show", as: "book"
  delete "books/:id", to: "book_list_items#destroy"
  get "/authors", to: "authors#index", as: "authors"
  get "/authors/:id", to: "authors#show", as: "author"
  get "/mylist", to: "book_list_items#index", as: "book_list_items"
  get "/mylist/:id/edit", to: "book_list_items#edit", as: "edit_book_list_item"
  put "/mylist/:id", to: "book_list_items#update"
  patch "/mylist/:id", to: "book_list_items#update", as: "book_list_item"
  get "/reviews/new", to: "reviews#new", as: "new_review"
  post "/reviews", to: "reviews#create"
  get "/fans/:id", to: "fans#index", as: "fans"
end

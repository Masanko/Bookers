Rails.application.routes.draw do
 resources :homes
 root :to =>'homes#index'
 resources :books
patch'books/:id'=>'books#update',as:'apdate_books'
delete'books/:id' =>'books#destroy',as:'destroy_books'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

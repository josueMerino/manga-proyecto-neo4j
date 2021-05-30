Rails.application.routes.draw do
  root "main#index"
  get "/delete", to: "main#deleteAll", as: 'deleteData'
  get "/upload", to: "main#upload", as: 'uploadData'
  resources :comics
  resources :magazines
  resources :mangakas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

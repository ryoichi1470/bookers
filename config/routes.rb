Rails.application.routes.draw do
  get 'top' => 'homes#top'
  resources :books
  root to: 'home#top'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/rou

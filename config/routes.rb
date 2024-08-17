Rails.application.routes.draw do
  get 'homes/top', to: 'homes#top'
  root 'homes#top'
  resources :books
end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/rou

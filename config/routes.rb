Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/delete'
  devise_for :users
  root to: 'homes#top'
  
  get 'about' =>'homes#about', as: 'about'
  
  resources :users
  resources :books do
    resource :favorites
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

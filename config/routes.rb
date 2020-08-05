Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'wizard/registrations'
  }
  devise_scope :user do
    get 'personals', to: 'wizard/registrations#new_personal'
    post 'personals', to: 'wizard/registrations#create_personal'
  end
  root to: 'items#index'
  resources :items
  get 'newitems', to: 'items#newitem'
  get 'category', to: 'items#category'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

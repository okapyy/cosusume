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
  get 'makeupbase', to: 'items#makeupbase'
  get 'concealer' , to: 'items#concealer'
  get 'facepowder', to: 'items#facepowder'
  get 'foundation', to: 'items#foundation'
  get 'highlight_shading', to: 'items#highlight_shading'
  get 'cheek', to: 'items#cheek'
  get 'eye_shadow', to: 'items#eye_shadow'
  get 'eyeliner', to: 'items#eyeliner'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

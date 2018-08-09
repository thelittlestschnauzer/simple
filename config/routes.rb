Rails.application.routes.draw do


  resources :lists do
    resources :tasks
  end
  
  resources :appointments
  resources :categories


  devise_for :users, :controllers => { :registrations => "registrations" }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get '/', to: 'devise/registrations#new'
  end
  get 'today', to: 'pages#index'
  root to: 'registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

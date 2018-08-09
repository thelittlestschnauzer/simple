Rails.application.routes.draw do


  resources :notes
  resources :lists do
    resources :tasks
  end

  resources :appointments
  resources :categories

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get '/', to: 'devise/registrations#new'
  end
  get 'today', to: 'pages#index'
  devise_for :users, :controllers => { :registrations => "registrations" }

  root to: 'registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "registrations" }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get '/', to: 'devise/registrations#new'
  end

  root to: 'registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

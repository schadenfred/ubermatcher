Ubermatcher::Application.routes.draw do

  devise_for :users, controllers: {
    :sessions => "sessions", 
    :confirmations => "confirmations",
    :registrations => "registrations"
  }

  devise_scope :user do
    put "/confirm" => "confirmations#confirm"
  end

  match '/contact',             :to => 'pages#contact'
  match '/about',               :to => 'pages#about'
  match '/help',                :to => 'pages#help'
  match '/terms',               :to => 'pages#terms'
  match '/privacy',             :to => 'pages#privacy'
  match '/signup',              :to => 'registrations#new'
  
  authenticated :user do
    root :to => 'pages#home'
  end

  match '/auth/:provider/callback' => 'authentications#create'


  resources :matches

  root to: 'pages#home' 
end

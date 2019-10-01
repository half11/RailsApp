Rails.application.routes.draw do

  #get 'topics/index'
  #get 'topics/show'
  resources :topics, only: [:index, :show]

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about' #controller / method - aqui se puede usar la ruta que sea y no afecta la funcionalidad
  get 'pages/contact' #controller / method - aqui no se puede cambiar la ruta pues pierde la secuencia que usa rails, si queremos cambiar la ruta se debe usar la forma de arriba
  get 'tech-news', to: 'pages#tech_news' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'

  root to: 'pages#home' #index principal
end

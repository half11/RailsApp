Rails.application.routes.draw do

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#home' #index principal

  resources :blogs do
    member do
      get :toggle_status
    end
  end


  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about' #controller / method - aqui se puede usar la ruta que sea y no afecta la funcionalidad
  get 'pages/contact' #controller / method - aqui no se puede cambiar la ruta pues pierde la secuencia que usa rails, si queremos cambiar la ruta se debe usar la forma de arriba

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

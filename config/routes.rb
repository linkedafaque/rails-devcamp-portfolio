Rails.application.routes.draw do
  # resources :portfolios

  # Route all requests except 'show' to apis starting with portfolios
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # get 'pages/home'
  # get 'pages/about'
  # get 'pages/contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs

  root to: 'pages#home'
end

Rails.application.routes.draw do
  resources :themes, except: [:new, :edit]
  root :to => "articles#index"
  resources :articles
  get 'signup' => 'authors#new'
  resources :authors

  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'gossips#index'
  get 'gossips/update'
  get 'gossips/edit'
  get 'gossips/destroy'
  get 'gossips/index'
  get 'gossips/show'
  get '/gossips/show/:id', to: 'gossips#show'
  get 'user/show'
  
  get 'welcome/:first_name', to: 'welcome#first_name'

  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'

  resources :gossips, only: [:new, :create] 

end

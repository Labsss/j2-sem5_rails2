Rails.application.routes.draw do
  get 'welcome/:first_name', to: 'welcome#first_name'

  get '/team', to: 'static#team'

  get '/contact', to: 'static#contact'

end

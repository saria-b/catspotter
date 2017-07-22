Rails.application.routes.draw do
  get 'pages/catspotter'

  get 'pages/info'

  root :to => redirect('/pages/catspotter')
  resources :cats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  # namespace :api do
  #   resources :jobpostings
  # end

  get '/api/jobpostings', to: 'api/jobpostings#index'

  #error: no route matches for GET '/jobpostings...?'

end
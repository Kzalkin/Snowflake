Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'rants#index'
  get '/rants', to: 'rants#index', as: 'rants'
  get '/rants/new', to: 'rants#new'
  get '/rants/:id', to: 'rants#show', as: 'rant'
  post '/rants', to: 'rants#create'
  get '/rants/:id/edit', to: 'rants#edit', as: 'rant_edit'
  patch '/rants/:id', to: 'rants#update'
  delete '/rants/:id', to: 'rants#destroy'
end

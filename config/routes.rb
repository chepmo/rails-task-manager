Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/tasks', to: 'tasks#index'
  # root for create
  get '/tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # root for delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
  # root for edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  # pour eviter pb new id
  get '/tasks/:id', to: 'tasks#show', as: :task
end

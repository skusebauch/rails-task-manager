Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # the 7 RESTful routes without resources
  get '/tasks', to: 'tasks#index'
  # new before id - dynamic paths at the end (resource will take care of this later)
  # Get the form for creating a task
  get '/tasks/new', to: 'tasks#new'
  # receive the form POST for creating a record
  post '/tasks', to: 'tasks#create'
  # get the form for editing a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
  # receive the form patch for editing a restaurant
  patch '/tasks/:id', to: 'tasks#update'
  get '/tasks/:id', to: 'tasks#show', as: :task
  delete '/tasks/:id', to: 'tasks#destroy'
end

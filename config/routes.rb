Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all tasks
  get 'tasks', to: 'tasks#index'

  # Create a task: get task creation form + post to db
  get "tasks/new", to: "tasks#new", as: :new_task # new needs to be before show
  post "tasks", to: "tasks#create"

  # See the details of one task
  get "tasks/:id", to: "tasks#show", as: :task

  # Update a task: get task editting form + patch to db
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

end

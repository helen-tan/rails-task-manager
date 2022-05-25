Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all tasks
  get 'tasks', to: 'tasks#index'

  # See the details of one task
  get "tasks/:id", to: "tasks#show", as: :task
end

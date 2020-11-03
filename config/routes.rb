Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # List all tasks
  get "tasks", to: "tasks#index"

  # Create new task
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  # Show one task
  get "tasks/:id", to: "tasks#show", as: :task

  # Edit a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Delete task
  delete "tasks/:id", to: "tasks#destroy"
end

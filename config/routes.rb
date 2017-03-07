Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks

  # root to: 'tasks#index'
  # get 'tasks/new', to:'tasks#new'
  # post 'tasks', to:'tasks#create'
  # get 'tasks/:id/edit', to:'tasks#edit', as: 'edit_task'
  # patch 'tasks/:id', to:'tasks#update', as: 'tasks_id'

  # get 'tasks/:id', to:'tasks#show', as: 'task'
  # delete 'tasks/:id', to: 'tasks#destroy'
end
# problem is in the redirection. id = :id and not the id number of the task

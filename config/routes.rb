Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Ruta para mostrar el formulario de edición de una tarea
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # Ruta para manejar la actualización de una tarea
  patch 'tasks/:id', to: 'tasks#update'

  # Ruta para mostrar el formulario de creación de una nueva tarea
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # Ruta para manejar la creación de una nueva tarea
  post 'tasks', to: 'tasks#create'

  # Ruta para listar todas las tareas
  get 'tasks', to: 'tasks#index'

  # Ruta para mostrar los detalles de una tarea específica
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Ruta para eliminar una tarea
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end

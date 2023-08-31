Rails.application.routes.draw do
  # root "projects#index"
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Ruta en inglés para el índice de proyectos
  get "projects/en", to: "projects#index_en", as: :projects_en

  # Ruta en inglés para el detalle de un proyecto
  get "projects/en/:id", to: "projects#show_en", as: :project_en
  resources :projects, only: [:index, :show]
end

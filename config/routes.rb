Rails.application.routes.draw do
  root "projects#index"

  resources "skills"
  resources "projects"
end

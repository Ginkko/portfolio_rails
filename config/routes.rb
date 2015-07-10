Rails.application.routes.draw do
  devise_for :users
  root "projects#index"
  resources "users", only: ["show", "index"]
  resources "skills"
  resources "projects"
  resources "posts" do
    resources "comments", except: ["show", "index"]
  end
end

Kayamoyan::Application.routes.draw do
  root :to => 'home#index'
  get "home/index"
  devise_for :users
  
  resources :schools
  resources :students
  resources :subjects, :shallow => true do
    resources :grades
  end
end

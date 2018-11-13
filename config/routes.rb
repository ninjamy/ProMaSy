Rails.application.routes.draw do
  resources :work_types
  resources :work_groups
  resources :works
  resources :users
  resources :user_roles
  resources :user_accesses
  resources :time_lines
  resources :task_types
  resources :task_statuses
  resources :tasks
  resources :stages
  resources :roles
  resources :portfolios
  resources :level_of_efforts
  resources :edit_histories
  resources :environments
  resources :completed_verifications
  resources :companies
  resources :home
  
  get 'portfolios/index' #=> 'greeter#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "portfolios/list"
 root 'home#index'


end

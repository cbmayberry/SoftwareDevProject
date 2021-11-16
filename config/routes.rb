Rails.application.routes.draw do
  resources :orgs, :events
  root :to => 'welcome#index'
  resources :posts
  get 'calendar/show'
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
end

CalendarExample::Application.routes.draw do
  resources :posts
  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"
end

Rails.application.routes.draw do
  resources :posts
    get "about", to: "about#index"
end

#Rails.application.routes.draw do
#  root 'welcome#index'
#end


Rails.application.routes.draw do
  resources :orgs, :events
  root :to => 'welcome#index'
end
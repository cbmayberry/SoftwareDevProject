Rails.application.routes.draw do
  resources :orgs, :events
  root :to => 'welcome#index'
  get 'orgs', to: 'welcome#orgs'
  get 'events', to: 'welcome#events'
end
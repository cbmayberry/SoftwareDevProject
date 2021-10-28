Rails.application.routes.draw do
  get 'calendar/show'
  resources :orgs, :events
  root :to => 'welcome#index'
end

CalendarExample::Application.routes.draw do
  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"
end

Rails.application.routes.draw do
    get "about", to: "about#index"
end
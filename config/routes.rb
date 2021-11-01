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
    direct(:orgs) { "https://peaceful-inlet-32598.herokuapp.com/orgs" }
    direct(:events) { "https://peaceful-inlet-32598.herokuapp.com/events" }
end
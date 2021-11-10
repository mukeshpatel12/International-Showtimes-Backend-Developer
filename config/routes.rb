Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :jobs
    end
  end
  mount RailsPerformance::Engine, at: 'rails/performance'
end
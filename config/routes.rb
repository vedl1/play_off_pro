Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  get "competitions/:competition_id/results/:id", to: "results#show", as: :result
  get "competitions/:id/loading", to: "competitions#loading", as: :competition_loading
  get "competitions/:id/accept", to: "competitions#accept", as: :competition_accept
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  get "/invitations", to: "pages#invitations", as: :invitations

  post "competitions/:id/results", to: "results#create", as: :competition_result
  get "competitions/:id/stats", to: "competitions#stats", as: :competition_stats
  root to: "pages#home"
  patch "competitions/:id/agree", to: "competitions#agree", as: :competition_agree

  resources :games do
    resources :competitions, only: [:new, :create]
  end
  get "competitions/:id/invitation", to: "competitions#invitation", as: :competition_invitation
end

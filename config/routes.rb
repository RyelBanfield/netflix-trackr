require 'sidekiq/web'

Rails.application.routes.draw do
  resources :shows
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
    namespace :active_storage do
      resources :variant_records
    end
    namespace :active_storage do
      resources :attachments
    end
    namespace :active_storage do
      resources :blobs
    end
    resources :announcements
    resources :notifications
    resources :services
    resources :users
    root to: "dashboard#show"
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

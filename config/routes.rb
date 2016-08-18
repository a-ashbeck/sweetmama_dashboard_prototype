Rails.application.routes.draw do
  namespace :prototype do
    resources :messages, only: [:index, :new, :create]
    resource :landings, only: :show
    resources :notifications, only: [:index, :new, :create]
    resources :participant_activities, only: :index
    resource :logins, only: :show
  end

  root to: 'prototype/landings#show'
end

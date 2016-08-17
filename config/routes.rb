Rails.application.routes.draw do
  namespace :prototype do
    resources :messages, only: [:index, :new, :create]
    resource :landings, only: :show
  end

  root to: 'prototype/landings#show'
end

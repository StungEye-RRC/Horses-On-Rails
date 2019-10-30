# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :breeds, only: :show
  resources :horses, only: :show do
    collection do
      get 'search_results'
    end
  end

  root to: 'breeds#index'
end

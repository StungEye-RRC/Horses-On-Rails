# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :breeds, only: :show
  resources :horses, only: :show

  get "search", to: "horses#search", as: "search" # search_path

  root to: "breeds#index"
end

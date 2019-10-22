# frozen_string_literal: true

Rails.application.routes.draw do
  resources :breeds, only: :show
  resources :horses, only: %i[index show]

  root to: 'breeds#index'
end

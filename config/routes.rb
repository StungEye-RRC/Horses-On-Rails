# frozen_string_literal: true

Rails.application.routes.draw do
  resources :breeds, only: :show
  resources :horses, only: :show do
    collection do
      get 'search_results'
    end
  end

  root to: 'breeds#index'
end

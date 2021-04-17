# frozen_string_literal: true

Rails.application.routes.draw do
  resources :portfolio_sets #, except: [:show]
  # get 'portfolio/:id', to: 'portfolio_sets#show', as: 'portfolio_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end

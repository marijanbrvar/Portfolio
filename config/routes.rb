# frozen_string_literal: true

Rails.application.routes.draw do
  resources :portfolio_sets
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
end

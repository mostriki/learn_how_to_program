Rails.application.routes.draw do
  root :to => 'courses#index'

  resources :courses
  resources :sections
  resources :lessons
end

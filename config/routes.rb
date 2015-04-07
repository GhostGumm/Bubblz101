Rails.application.routes.draw do

  get 'video_uploads/new'

  get 'sessions/create'

  get 'videos/index'

  resources :videos, only: [:index, :new, :create]
  root to: 'videos#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  resources :video_uploads, only: [:new, :create]
end

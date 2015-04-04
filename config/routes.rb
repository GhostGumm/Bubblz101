Rails.application.routes.draw do

  #la route root pour que le user soit directement rediriger sur le controller videos



  resources :videos, only: [:new, :index]
  root to: 'videos#index'

  post '/videos/get_upload_token', to: 'videos#get_upload_token', as: :get_upload_token
  get '/videos/get_video_uid', to: 'videos#get_video_uid', as: :get_video_uid

  get'/auth/failure', to: 'session#fail'
  get'/auth/:provider/callback', to: 'sessions#create'
  get'/auth/:provider/', to: 'sessions#create'
  get'/auth/google_oauth2/callback', to: 'sessions#create'


end
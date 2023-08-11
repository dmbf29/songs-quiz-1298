Rails.application.routes.draw do
  # get "/search", to: 'songs#search'
  # get "/songs/named/:name", to: 'songs#search'

  # # verb '/path', 'controller#action', as: :prefix

  # # Create
  # get '/songs/new', to: 'songs#new', as: :new_song
  # post '/songs', to: 'songs#create', as: :songs

  # # Update
  # get '/songs/:id/edit', to: 'songs#edit', as: :edit_song
  # patch '/songs/:id', to: 'songs#update', as: :song

  # # Read
  # get '/songs', to: 'songs#index'
  # get '/songs/:id', to: 'songs#show'

  # # Destroy
  # delete '/songs/:id', to: 'songs#destroy'

  resources :songs do
    resources :reviews, only: [:new, :create]
  end
end

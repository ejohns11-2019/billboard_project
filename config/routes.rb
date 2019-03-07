Rails.application.routes.draw do
  get 'artists/index'
  get 'artists/show'
  get 'artists/new'
  get 'artists/edit'
  get 'songs/index'
  get 'songs/show'
  get 'songs/new'
  get 'songs/edit'
  root 'billboard_songs#index'

  resources :billboard_songs do
    resources :songs
  end

  resources :artists do #can i have songs nested within 2?
    resources :songs
  end

end

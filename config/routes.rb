Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :songs, only: [:edit, :index, :new, :update, :create, :show, :songs]
    resources :artists, only: [:edit, :index, :new, :update, :create, :show, :artists]
    resources :genres, only: [:edit, :index, :new, :update, :create, :show, :genres]

end

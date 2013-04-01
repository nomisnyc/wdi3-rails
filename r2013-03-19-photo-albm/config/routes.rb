R20130319PhotoAlbm::Application.routes.draw do
  root :to => 'home#index'
  resources :photos, :only => [:new, :create]

  resources :albums, :only => [:new, :create, :show] do
  member do
    get :filter
  end
end
end
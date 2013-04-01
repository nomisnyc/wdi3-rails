R20130213MomaRails::Application.routes.draw do
resources :artists, :paintings

 get '/' => 'artists#index'
 get '/paintings' => 'paintings#index'

end

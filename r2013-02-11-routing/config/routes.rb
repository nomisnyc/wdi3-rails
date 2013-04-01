R20130211Routing::Application.routes.draw do

  get '/a' => 'home#a'
  get '/b' => 'home#b'
  get '/one' => 'home#one'
  get '/two' => 'home#two'
  get '/three' => 'home#three'
  root :to => 'home#homepage'

end

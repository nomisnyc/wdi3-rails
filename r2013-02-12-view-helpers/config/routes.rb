R20130212ViewHelpers::Application.routes.draw do

get '/' => 'home#home'

root :to => 'home#home'

get '/numbers' => 'home#numbers'
get '/text' => 'home#text'
get '/assets' => 'home#assets'
get '/url' => 'home#url'

end

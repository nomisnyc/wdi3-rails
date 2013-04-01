R20130325Numb3rs::Application.routes.draw do
 
  root :to => 'numbers#index'
    get '/numbers/:id' => 'numbers#show'

end

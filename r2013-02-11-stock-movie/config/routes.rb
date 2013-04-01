R20130211StockMovie::Application.routes.draw do
  # root :to => 'welcome#index'



get '/' => 'home#homepage'
get '/about' => 'home#about'
get '/faq' => 'home#faq'

get '/movie' => 'movie#movie'
get '/movie_result' => 'movie#movie_result'

get '/stock' => 'stock#stock'
get 'stock_result' => 'stock#stock_result'



end
